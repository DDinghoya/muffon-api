module Deezer
  module Search
    class Tracks < Deezer::Search::Base
      include Deezer::Paginated

      private

      def model_name
        'track'
      end

      def collection_name
        'tracks'
      end

      def collection_item_data(track)
        {
          title: track['title'],
          artist: artist_data(track),
          album: album_data(track),
          images: images_data(track['album'], 'track'),
          length: track['duration'],
          audio: audio_data(track)
        }
      end

      def artist_data(track)
        { name: track.dig('artist', 'name') }
      end

      def album_data(track)
        return {} if track['album'].blank?

        { title: track.dig('album', 'title') }
      end

      def audio_data(track)
        {
          present: track['id'].present?,
          id: track['id'],
          source: 'deezer'
        }
      end
    end
  end
end
