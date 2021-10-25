module VK
  module Album
    class Tracks
      class Track < VK::Album::Tracks
        include VK::Utils::Track

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
            id: id,
            player_id: player_id,
            vk_id: vk_id,
            title: title,
            extra_title: extra_title,
            artist: artist_formatted,
            artists: artists
          }
        end

        def track
          @track ||= @args.track
        end

        def track_extra_data
          {
            duration: duration,
            audio: audio_data
          }
        end
      end
    end
  end
end
