module Muffon
  module Processor
    module Profile
      module Bookmarks
        module Album
          class Creator < Muffon::Processor::Profile::Bookmarks::Base
            include Muffon::Utils::Album

            private

            def primary_args
              super + [
                @args[:title],
                @args[:artist_name]
              ]
            end

            def process_bookmark
              bookmark_album

              return bookmark_album.errors_data if
                  bookmark_album.errors?

              process_image

              { bookmark_album: bookmark_album_data }
            end

            def bookmark_album
              @bookmark_album ||=
                profile.bookmark_albums.where(
                  album_id: find_album.id
                ).first_or_create(
                  create_params
                )
            end

            def artist_name
              @args[:artist_name]
            end

            def title
              @args[:title]
            end

            def create_params
              { source_data: @args[:source_data] }
            end

            def process_image
              bookmark_album.process_image(
                @args[:image_url]
              )
            end

            def bookmark_album_data
              { id: bookmark_album.id }
            end
          end
        end
      end
    end
  end
end
