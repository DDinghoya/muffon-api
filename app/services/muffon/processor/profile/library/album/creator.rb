module Muffon
  module Processor
    module Profile
      module Library
        module Album
          class Creator < Muffon::Processor::Profile::Library::Album::Base
            include Muffon::Utils::Album

            private

            def primary_args
              super + [
                @args[:title],
                @args[:artist]
              ]
            end

            def process_library_album
              library_album

              return library_album.errors_data if
                  library_album.errors?

              process_image

              { library_album: library_album_data }
            end

            def library_album
              @library_album ||=
                profile
                .library_albums
                .where(
                  album_id: find_album.id,
                  library_artist_id: library_artist.id
                ).first_or_create
            end

            def title
              @args[:title]
            end

            def artist_name
              @args[:artist]
            end

            def library_artist
              profile
                .library_artists
                .where(
                  artist_id: find_album.artist_id
                ).first_or_create
            end

            def process_image
              library_album.process_image(
                @args[:image]
              )
            end

            def library_album_data
              { id: library_album.id }
            end
          end
        end
      end
    end
  end
end
