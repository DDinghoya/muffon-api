module LastFM
  module Top
    class Albums < LastFM::Top::Base
      COLLECTION_NAME = 'albums'.freeze
      MODEL_NAME = 'album'.freeze
      TOTAL_LIMIT = 1_000

      private

      def collection_item_data_formatted(album)
        LastFM::Top::Albums::Album.call(
          album:,
          profile_id: @args[:profile_id]
        )
      end
    end
  end
end
