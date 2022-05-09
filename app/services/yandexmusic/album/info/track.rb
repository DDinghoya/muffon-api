module YandexMusic
  module Album
    class Info
      class Track < YandexMusic::Album::Info
        include YandexMusic::Utils::Track

        def call
          data
        end

        private

        def data
          muffon_data
            .merge(track_base_data)
            .merge(track_extra_data)
        end

        def track_base_data
          {
            source_id:,
            player_id:,
            yandex_music_id:,
            title:,
            extra_title:,
            artist: artist_names_data,
            artists:
          }.compact
        end

        def track
          @args[:track]
        end

        def track_extra_data
          {
            duration:,
            duration_seconds:,
            audio: audio_data
          }
        end
      end
    end
  end
end
