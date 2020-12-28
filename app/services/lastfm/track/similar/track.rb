module LastFM
  module Track
    class Similar
      class Track < LastFM::Track::Similar
        def call
          similar_track_data
        end

        private

        def primary_args
          [@args.similar]
        end

        def similar_track_data
          {
            id: track_id(artist_name, title),
            title: title,
            artist: artist_name,
            length: @args.similar['duration'].to_i
          }
        end

        def artist_name
          @args.similar.dig('artist', 'name')
        end

        def title
          @args.similar['name']
        end
      end
    end
  end
end
