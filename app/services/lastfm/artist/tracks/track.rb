module LastFM
  module Artist
    class Tracks
      class Track < LastFM::Artist::Tracks
        include LastFM::Utils::Track

        def call
          data
        end

        private

        def data
          muffon_data
            .merge(track_data)
        end

        def track_data
          {
            source_id:,
            player_id:,
            title:,
            listeners_count:
          }
        end

        def track
          @args[:track]
        end
      end
    end
  end
end
