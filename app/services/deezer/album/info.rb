module Deezer
  module Album
    class Info < Deezer::Album::Base
      private

      def album_data
        album_main_data.merge(album_extra_data)
      end

      def album_main_data
        {
          id: album_id(artist_name(response_data), title),
          title: title,
          artist: artist_data(response_data),
          source: 'deezer'
        }
      end

      def album_extra_data
        {
          images: images_data(response_data, 'album'),
          listeners_count: response_data['fans'],
          released: released,
          labels: [response_data['label']],
          tags: tags.first(5),
          tracks: tracks_data
        }
      end

      def released
        time_formatted(response_data['release_date'])
      end

      def tracks_data
        tracks_list.map { |t| track_data(t) }
      end

      def tracks_list
        response_data.dig('tracks', 'data')
      end

      def track_data(track)
        {
          id: track_id(artist_name(track), track['title']),
          title: track['title'],
          artist: artist_data(track),
          length: track['duration'],
          audio: audio_data(track)
        }
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
