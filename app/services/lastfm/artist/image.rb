module LastFM
  module Artist
    class Image < LastFM::Artist::Base
      include Muffon::Utils::Artist

      private

      def artist_data
        update_image

        { image: find_artist.image_data }
      end

      def update_image
        find_artist.process_image(
          image
        )
      end

      def image
        images_list.dig(
          0, :original
        )
      end

      def images_list
        artist_images_data.dig(
          :artist, :images
        ) || []
      end

      def artist_images_data
        LastFM::Artist::Images.call(
          artist: @args[:artist]
        )
      end
    end
  end
end
