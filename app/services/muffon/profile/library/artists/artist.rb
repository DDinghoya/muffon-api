module Muffon
  module Profile
    module Library
      class Artists
        class Artist < Muffon::Profile::Library::Artists
          include Muffon::Utils::Library::Artist

          def call
            data
          end

          private

          def data
            return artist_minimal_data if @args[:minimal]

            self_data
              .merge(artist_data)
          end

          def artist_minimal_data
            { name: }
          end

          def library_artist
            @args[:library_artist]
          end

          def artist_data
            {
              library: library_artist_data,
              name:,
              image: artist.image_data,
              albums_count:
                library_artist.library_albums_count,
              tracks_count:
                library_artist.library_tracks_count,
              created: created_formatted
            }.compact
          end

          def created_formatted
            datetime_formatted(
              library_artist.created_at
            )
          end
        end
      end
    end
  end
end
