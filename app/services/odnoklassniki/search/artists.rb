module Odnoklassniki
  module Search
    class Artists < Odnoklassniki::Search::Base
      COLLECTION_NAME = 'artists'.freeze
      ENDPOINT_NAME = 'artists'.freeze

      private

      def collection_list
        return super if first_artist.blank?

        @collection_list ||= super.prepend(
          first_artist
        )
      end

      def first_artist
        @first_artist ||= response_data.dig(
          'bestMatch', 'artist'
        )
      end

      def collection_item_data_formatted(artist)
        Odnoklassniki::Search::Artists::Artist.call(
          artist: artist
        )
      end
    end
  end
end
