module Muffon
  module Radio
    module Artist
      class Tracks < Muffon::Radio::Artist::Base
        TRACKS_LIMIT = 50

        private

        def artist_info_data
          @artist_info_data ||=
            LastFM::Artist::Tracks.call(
              artist: @args[:artist],
              limit: 1,
              page: random_track_number
            )[:artist]
        end

        def radio_track_data
          artist_info_data.dig(
            :tracks, 0
          )
        end

        def artist_name
          artist_info_data[:name]
        end
      end
    end
  end
end
