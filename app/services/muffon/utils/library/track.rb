module Muffon
  module Utils
    module Library
      module Track
        include Muffon::Utils::Track

        private

        def library_track_data
          {
            id: library_track.id,
            artist: library_artist_data,
            album: library_album_data
          }.compact
        end

        def title
          track.title
        end

        def track
          @track ||= library_track.track
        end

        def library_artist_data
          { id: library_artist.id }
        end

        def library_artist
          library_track.library_artist
        end

        def library_album_data
          { id: library_album&.id }
        end

        def library_album
          library_track.library_album
        end

        def artists
          [artist_data]
        end

        def artist_data
          { name: artist_name }
        end

        def artist_name
          artist.name
        end

        def artist
          library_artist.artist
        end

        def album_data
          return if library_album.blank?

          { title: album.title }
        end

        def album
          library_album.album
        end

        def image_data
          library_album&.image_data
        end

        def created_formatted
          datetime_formatted(
            library_track.created_at
          )
        end
      end
    end
  end
end
