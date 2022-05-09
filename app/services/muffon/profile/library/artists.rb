module Muffon
  module Profile
    module Library
      class Artists < Muffon::Profile::Library::Base
        COLLECTION_NAME = 'artists'.freeze
        include Muffon::Utils::Pagination

        private

        def library_data
          library_base_data
            .merge(paginated_data)
        end

        def library_base_data
          {
            top_tracks_count:,
            top_albums_count:
          }
        end

        def total_items_count
          library_artists.size
        end

        def collection_list
          library_artists
            .library_tracks_count_desc_ordered
            .library_albums_count_desc_ordered
            .created_desc_ordered
            .limit(limit)
            .offset(offset)
            .associated
        end

        def collection_item_data_formatted(library_artist)
          Muffon::Profile::Library::Artists::Artist.call(
            library_artist:,
            profile_id: @args[:profile_id]
          )
        end
      end
    end
  end
end
