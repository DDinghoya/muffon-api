module YandexMusic
  module Search
    class Albums
      class Album < YandexMusic::Search::Albums
        include YandexMusic::Utils::Album

        def call
          data
        end

        private

        def data
          {
            id: id,
            yandex_music_id: yandex_music_id,
            title: title,
            extra_title: extra_title,
            artist: artist_formatted,
            artists: artists,
            image: image_data,
            release_date: release_date
          }.compact
        end

        def album
          @album ||= @args.album
        end
      end
    end
  end
end
