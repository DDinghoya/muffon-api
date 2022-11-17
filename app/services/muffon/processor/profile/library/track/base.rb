module Muffon
  module Processor
    module Profile
      module Library
        module Track
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
              process_library_track
            end
          end
        end
      end
    end
  end
end
