module LastFM
  class Base < Muffon::Base
    private

    def api_response(method)
      RestClient.get(api_link, params: params(method))
    rescue RestClient::BadRequest
      '{}'
    end

    def api_link
      'http://ws.audioscrobbler.com/2.0'
    end

    def params(method)
      base_params(method).merge(args_params)
    end

    def base_params(method)
      {
        method: method,
        api_key: api_key,
        format: 'json',
        autocorrect: 1
      }
    end

    def args_params
      {
        artist: @args.artist,
        album: @args.album,
        track: @args.track,
        tag: @args.tag,
        page: @args.page,
        limit: @args.limit || 50
      }.compact
    end

    def api_key
      secrets.lastfm[:api_key][Rails.env.to_sym]
    end

    def not_found_data
      { error: 'Not found.' }
    end
  end
end
