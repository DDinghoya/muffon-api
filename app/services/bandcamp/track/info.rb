module Bandcamp
  module Track
    class Info < Bandcamp::Track::Base
      private

      def track_data
        muffon_data
          .merge(track_base_data)
          .merge(track_extra_data)
          .merge(with_more_data)
      end

      def track_base_data
        {
          source_id:,
          player_id:,
          bandcamp_id:,
          title:,
          artist: artist_names_data,
          artists:
        }
      end

      def track_extra_data
        {
          album: album_data,
          image: image_data,
          duration:,
          duration_seconds:,
          description:
            description_truncated,
          tags: tags_truncated,
          audio: audio_data
        }.compact
      end

      def album_data
        return if album_title.blank?

        {
          source_id:,
          bandcamp_id: album_bandcamp_id,
          artist: artist_names_data,
          artists:,
          title: album_title
        }
      end

      def album_title
        @album_title ||=
          response_data['album_title']
      end

      def album_bandcamp_id
        response_data['album_id']
      end

      def image_data
        image_data_formatted(
          image(
            response_data
          )
        )
      end

      def description
        response_data['about']
      end

      def tags_list
        response_data['tags']
      end

      def audio_data
        {
          source_id:,
          present: audio_present?,
          link: redirect_audio_link
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
