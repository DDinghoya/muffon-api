module LastFM
  module Multitag
    class Artists
      class Artist < LastFM::Multitag::Artists
        include LastFM::Utils::Artist

        def call
          data
        end

        private

        def data
          muffon_data
            .merge(artist_data)
        end

        def artist_data
          {
            name:,
            listeners_count:,
            plays_count:,
            image: image_data
          }.compact
        end

        def artist
          @args[:artist]
        end

        def listeners_count
          artist['listeners'].to_i
        end

        def plays_count
          artist['scrobbles'].to_i
        end

        def image_data
          image_data_formatted(
            artist['image'], 'artist'
          )
        end
      end
    end
  end
end
