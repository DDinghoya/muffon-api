module Muffon
  module Profile
    module Library
      module Track
        class Info < Muffon::Profile::Library::Track::Base
          private

          def track_data
            track_base_data
              .merge(track_extra_data)
          end

          def track_base_data
            {
              library: library_track_data,
              favorite_id:,
              player_id: track.player_id,
              title:,
              artist: artist_names_data,
              artists:
            }
          end

          def track_extra_data
            {
              album: album_data,
              image: image_data,
              created: created_formatted
            }.compact
          end
        end
      end
    end
  end
end
