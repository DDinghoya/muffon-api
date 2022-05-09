module Discogs
  module Album
    class Info < Discogs::Album::Base
      private

      def album_data
        muffon_data
          .merge(album_base_data)
          .merge(album_extra_data)
          .merge(with_more_data)
      end

      def album_base_data
        {
          source_id:,
          title:,
          artist: artist_names_data,
          artists:
        }
      end

      def album_extra_data
        {
          image: image_data,
          release_date:,
          description:
            description_truncated,
          labels:,
          tags: tags_truncated,
          tracks:
        }.compact
      end

      def raw_release_date
        album['released']
      end

      def labels_list
        album['labels']
      end

      def label_data_formatted(label)
        {
          name: label['name'],
          discogs_id: label['id']
        }
      end
    end
  end
end
