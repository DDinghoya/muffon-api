module Spotify
  module Search
    class Tracks < Spotify::Search::Base
      COLLECTION_TYPE = 'track'.freeze
      COLLECTION_NAME = 'tracks'.freeze

      private

      def collection_list
        super.compact
      end

      def collection_item_data_formatted(track)
        Spotify::Search::Tracks::Track.call(
          track:,
          profile_id: @args[:profile_id],
          token: @args[:token]
        )
      end
    end
  end
end
