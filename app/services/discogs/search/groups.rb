module Discogs
  module Search
    class Groups < Discogs::Search::Base
      COLLECTION_NAME = 'groups'.freeze
      COLLECTION_TYPE = 'master'.freeze

      private

      def collection_item_data_formatted(group)
        Discogs::Search::Groups::Group.call(
          group: group,
          profile_id: @args.profile_id
        )
      end
    end
  end
end
