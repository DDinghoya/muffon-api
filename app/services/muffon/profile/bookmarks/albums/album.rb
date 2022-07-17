module Muffon
  module Profile
    module Bookmarks
      class Albums
        class Album < Muffon::Profile::Bookmarks::Albums
          include Muffon::Utils::Album

          def call
            data
          end

          private

          def data
            muffon_data
              .merge(bookmark_album_data)
          end

          def title
            album.title
          end

          def album
            @album ||= bookmark_album.album
          end

          def bookmark_album
            @args[:bookmark_album]
          end

          def artist_name
            artist.name
          end

          def artist
            album.artist
          end

          def bookmark_album_data
            {
              source:
                bookmark_album.source_data,
              id: bookmark_album.id,
              title:,
              artist: artist_names_data,
              artists:,
              image:
                bookmark_album.image_data
            }.compact
          end

          def artists
            [artist_data]
          end

          def artist_data
            { name: artist_name }
          end
        end
      end
    end
  end
end
