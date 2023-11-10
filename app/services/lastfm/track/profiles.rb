module LastFM
  module Track
    class Profiles < LastFM::Track::Base
      COLLECTION_NAME = 'profiles'.freeze

      include Muffon::Utils::Pagination

      private

      def total_items_count
        @total_items_count ||= profiles.count
      end

      def profiles
        @profiles ||= profiles_conditional
      end

      def profiles_conditional
        if creator?
          find_track.profiles
        else
          find_track
            .profiles
            .public
        end
      end

      def collection_list
        profiles
          .not_deleted
          .created_desc_ordered
          .limit(limit)
          .offset(offset)
          .associated
      end

      def collection_item_data_formatted(profile)
        Muffon::Profiles::Profile.call(
          profile:,
          other_profile_id: @args[:profile_id],
          token: @args[:token]
        )
      end

      alias track_data paginated_data
    end
  end
end
