module Spotify
  class Base < Muffon::Base
    def call
      super
    rescue RestClient::Unauthorized
      retry_with_new_spotify_token
    end

    private

    def response_data
      @response_data ||= JSON.parse(response)
    end

    def response
      RestClient.get(link, headers)
    end

    def base_link
      'https://api.spotify.com/v1'
    end

    def headers
      {
        'Authorization' => "Bearer #{spotify_token}",
        params: params
      }
    end

    def spotify_token
      if global.get('spotify_token').blank?
        global.set('spotify_token', new_spotify_token)
      end

      global.get('spotify_token')
    end

    def params
      {}
    end

    def retry_with_new_spotify_token
      global.set('spotify_token', new_spotify_token)
      call
    end

    def new_spotify_token
      Spotify::Utils::Token.call
    end

    def artist_name(data)
      data['artists'].map { |a| a['name'] }.join(', ')
    end

    def title
      response_data['name']
    end

    def artist_data(data)
      { name: artist_name(data) }
    end

    def image_data(data, model)
      Spotify::Utils::Image.call(data: data, model: model)
    end

    def length(track)
      track['duration_ms'].fdiv(1000).ceil
    end

    def audio_data(track)
      {
        present: false,
        id: track['id'],
        source: 'spotify'
      }
    end
  end
end
