module Muffon
  class Playlists < Muffon::Base
    COLLECTION_NAME = 'playlists'.freeze
    include Muffon::Utils::Pagination

    private

    def data
      { playlists: paginated_data }
    end

    def total_items_count
      playlists.size
    end

    def playlists
      @playlists ||= ::Playlist.public
    end

    def collection_list
      playlists
        .created_desc_ordered
        .limit(limit)
        .offset(offset)
        .associated
    end

    def collection_item_data_formatted(playlist)
      Muffon::Profile::Playlists::Playlist.call(
        playlist:
      )
    end
  end
end
