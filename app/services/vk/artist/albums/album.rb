module VK
  module Artist
    class Albums
      class Album < VK::Artist::Albums
        include VK::Utils::Album

        def call
          data
        end

        private

        def data
          album_base_data
            .merge(album_extra_data)
        end

        def album_base_data
          {
            title: title,
            extra_title: extra_title,
            vk_id: vk_id,
            vk_owner_id: vk_owner_id,
            vk_access_key: vk_access_key,
            artist: artist_formatted,
            artists: artists
          }.compact
        end

        def album
          @album ||= @args.album
        end

        def album_extra_data
          {
            image: image_data,
            release_date: release_date
          }
        end
      end
    end
  end
end
