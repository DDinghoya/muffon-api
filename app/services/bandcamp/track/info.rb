module Bandcamp
  module Track
    class Info < Bandcamp::Track::Base
      private

      def track_data
        track_base_data
          .merge(track_extra_data)
          .merge(with_more_data)
      end

      def track_base_data
        {
          title: title,
          bandcamp_id: bandcamp_id,
          player_id: player_id,
          artist: artist_formatted,
          artists: artists
        }
      end

      def track_extra_data
        {
          album: album_formatted,
          albums: albums,
          image: image_data,
          duration: duration,
          description: description_truncated,
          tags: tags.first(5),
          audio: audio_data
        }
      end

      def albums
        @albums ||= [album_data_formatted].compact
      end

      def album_data_formatted
        return if album_title.blank?

        {
          title: album_title,
          bandcamp_id: album_bandcamp_id
        }
      end

      def album_title
        @album_title ||= response_data['album_title']
      end

      def album_bandcamp_id
        response_data['album_id']
      end

      def image_data
        image_data_formatted(
          image(response_data), 'track'
        )
      end

      def description
        response_data['about'] || ''
      end

      def tags_list
        response_data['tags']
      end

      def audio_data
        {
          present: audio_present?,
          link: redirect_audio_link,
          source_id: self.class::SOURCE_ID
        }
      end

      def redirect_audio_link
        return unless audio_present?

        RestClient.get(audio_link) do |response|
          response.headers[:location]
        end
      end
    end
  end
end
