module VK
  module Search
    class Albums
      class Album < VK::Search::Albums
        include VK::Utils::Album

        def call
          data
        end

        private

        def data
          muffon_data
            .merge(album_data)
        end

        def album
          @args[:album]
        end

        def album_data
          {
            source: source_data,
            title:,
            extra_title:,
            artist: artist_names_data,
            artists:,
            image: image_data
          }.compact
        end
      end
    end
  end
end
