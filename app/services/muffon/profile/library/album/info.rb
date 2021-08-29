module Muffon
  module Profile
    module Library
      module Album
        class Info < Muffon::Profile::Library::Album::Base
          private

          def album_data
            {
              title: title,
              artist: artist_data,
              image: image_data,
              tracks_count: tracks_count,
              created: created
            }
          end

          def image_data
            profile_album.image_data.presence ||
              default_image_data
          end

          def default_image_data
            LastFM::Utils::Image.call(
              model: 'album',
              image: profile_album.image_url
            )
          end

          def tracks_count
            profile_album.profile_tracks_count
          end

          def created
            datetime_formatted(
              profile_album.created_at
            )
          end
        end
      end
    end
  end
end
