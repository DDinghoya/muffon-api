module Bandcamp
  module Search
    class Albums < Bandcamp::Search::Base
      private

      def collection_name
        'albums'
      end

      def model_name
        'album'
      end

      def collection_item_data(item)
        {
          title: title(item),
          artist: artist_data(item),
          images: images_data(image(item)),
          link: link_data(item['link'])
        }
      end
    end
  end
end
