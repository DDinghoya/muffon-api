module Muffon
  module Profile
    module Library
      module Album
        class Info < Muffon::Profile::Library::Album::Base
          private

          def album_data
            self_data
              .merge(album_base_data)
              .merge(album_extra_data)
          end

          def profile_id
            @args[:other_profile_id]
          end

          def album_extra_data
            {
              image: library_album.image_data,
              tracks_count:
                library_album.library_tracks_count,
              playlists_count:
                library_album.profile_playlists.count,
              created: created_formatted
            }.compact
          end

          def created_formatted
            datetime_formatted(
              library_album.created_at
            )
          end
        end
      end
    end
  end
end
