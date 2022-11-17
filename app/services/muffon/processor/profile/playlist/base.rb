module Muffon
  module Processor
    module Profile
      module Playlist
        class Base < Muffon::Profile::Base
          private

          def primary_args
            [
              @args[:profile_id],
              @args[:token]
            ]
          end

          def forbidden?
            !valid_profile?
          end

          def data
            process_playlist
          end

          def process_image
            playlist.process_image(
              @args[:image]
            )
          end
        end
      end
    end
  end
end
