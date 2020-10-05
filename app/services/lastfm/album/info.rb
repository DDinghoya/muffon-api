module LastFM
  module Album
    class Info < LastFM::Base
      def call
        return not_found_data if parsed_response.blank?

        { album: album_data }
      end

      private

      def parsed_response
        @parsed_response ||= JSON.parse(
          api_response('album.getInfo')
        )['album']
      end

      def album_data
        {
          title: parsed_response['name'],
          artist: parsed_response['artist'],
          cover: cover,
          mbid: parsed_response['mbid'],
          listeners_count: parsed_response['listeners'].to_i,
          plays_count: parsed_response['playcount'].to_i,
          description: description,
          tags: tags, tracks: tracks
        }
      end

      def cover
        parsed_response['image'][0]['#text'].sub('/34s', '')
      end

      def description
        return '' if parsed_response['wiki'].blank?

        parsed_response['wiki']['content'].match(
          %r{(.+)<a href="http(s?)://www.last.fm}m
        )[1].strip
      end

      def tags
        parsed_response['tags']['tag'].map { |t| t['name'] }
      end

      def tracks
        parsed_response['tracks']['track'].map do |t|
          {
            title: t['name'],
            length: t['duration'].to_i
          }
        end
      end
    end
  end
end
