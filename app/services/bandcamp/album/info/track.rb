module Bandcamp
  module Album
    class Info
      class Track < Bandcamp::Album::Info
        include Bandcamp::Utils::Track

        def call
          data
        end

        private

        def data
          muffon_data.merge(track_data)
        end

        def track_data
          {
            title: title,
            bandcamp_id: bandcamp_id,
            player_id: player_id,
            artist: artist_formatted,
            artists: artists,
            duration: duration,
            audio: audio_data
          }
        end

        def track
          @track ||= @args.track
        end

        def audio_data
          {
            present: audio_present?,
            track_id: bandcamp_id,
            artist_id: artist_bandcamp_id,
            source_id: self.class::SOURCE_ID
          }
        end
      end
    end
  end
end
