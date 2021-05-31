module YandexMusic
  module Utils
    module Track
      private

      def title
        track['title']
      end

      def extra_title
        track['version']
      end

      def yandex_music_id
        track['id'].to_i
      end

      def artists_list
        track['artists']
      end

      def albums
        @albums ||= albums_list.map do |a|
          album_data_formatted(a)
        end
      end

      def albums_list
        track['albums']
      end

      def album_data_formatted(album)
        {
          title: album['title'],
          extra_title: album['version'],
          yandex_music_id: album['id']
        }.compact
      end

      def image_data
        image_data_formatted(track, 'track')
      end

      def duration
        duration_formatted(
          track['durationMs'] / 1_000
        )
      end

      def audio_data
        {
          present: track['available'],
          track_id: yandex_music_id,
          source_id: self.class::SOURCE_ID
        }
      end
    end
  end
end
