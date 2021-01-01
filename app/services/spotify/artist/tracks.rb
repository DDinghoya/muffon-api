module Spotify
  module Artist
    class Tracks < Spotify::Artist::Base
      private

      def results
        response_data['tracks']
      end

      def link
        "#{base_link}/top-tracks"
      end

      def base_params
        {}
      end

      def extra_params
        { country: 'US' }
      end

      def data
        { artist: { tracks: tracks } }
      end

      def tracks
        results.map do |t|
          {
            title: t['name'],
            length: t['duration_ms'].fdiv(1000).ceil,
            albums: albums(t),
            spotify_id: t['id']
          }
        end
      end

      def albums(track)
        [track['album']].map do |a|
          {
            title: a['name'],
            artists: artists(a),
            image: a.dig('images', 0, 'url'),
            released: time_formatted(a['release_date']),
            spotify_id: a['id']
          }
        end
      end

      def artists(album)
        album['artists'].map do |a|
          {
            name: a['name'],
            spotify_id: a['id']
          }
        end
      end
    end
  end
end
