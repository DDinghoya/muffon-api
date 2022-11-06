module API
  module VK
    class SearchController < API::BaseController
      def artists; end

      def albums; end

      def tracks; end

      private

      def artists_data
        ::VK::Search::Artists.call(
          params.slice(
            *%i[query profile_id token page limit]
          )
        )
      end

      def albums_data
        ::VK::Search::Albums.call(
          params.slice(
            *%i[query profile_id token page limit]
          )
        )
      end

      def tracks_data
        ::VK::Search::Tracks.call(
          params.slice(
            *%i[query profile_id token page limit]
          )
        )
      end
    end
  end
end
