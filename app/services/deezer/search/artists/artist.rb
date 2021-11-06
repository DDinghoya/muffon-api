module Deezer
  module Search
    class Artists
      class Artist < Deezer::Search::Artists
        include Muffon::Utils::Artist

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
            id: id,
            deezer_id: deezer_id,
            name: name,
            image: image_data,
            listeners_count: listeners_count
          }
        end

        def name
          @args.artist['ART_NAME']
        end

        def deezer_id
          @args.artist['ART_ID'].to_i
        end

        def image_data
          image_data_formatted(
            @args.artist['ART_PICTURE'], 'artist'
          )
        end

        def listeners_count
          @args.artist['NB_FAN']
        end
      end
    end
  end
end
