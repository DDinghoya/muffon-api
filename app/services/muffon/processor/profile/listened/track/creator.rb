module Muffon
  module Processor
    module Profile
      module Listened
        module Track
          class Creator < Muffon::Processor::Profile::Listened::Base
            include Muffon::Utils::Track

            private

            def primary_args
              super + [
                @args[:title],
                @args[:artist]
              ]
            end

            def process_listened
              listened_track

              return listened_track.errors_data if
                  listened_track.errors?

              { listened_track: listened_track_data }
            end

            def listened_track
              @listened_track ||=
                profile
                .listened_tracks
                .where(
                  track_id: find_track.id
                ).first_or_create
            end

            def title
              @args[:title]
            end

            def artist_name
              @args[:artist]
            end

            def listened_track_data
              { id: listened_track.id }
            end
          end
        end
      end
    end
  end
end
