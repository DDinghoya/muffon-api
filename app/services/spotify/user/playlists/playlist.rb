module Spotify
  module User
    class Playlists
      class Playlist < Spotify::User::Playlists
        include Spotify::Utils::Playlist

        def call
          data
        end

        private

        def data
          {
            source: source_data,
            title:,
            description:,
            image: image_data,
            tracks_count:,
            tracks:
          }.compact
        end

        def playlist
          @args[:playlist]
        end

        def tracks_count
          tracks&.size
        end

        def tracks
          return if @args[:with_tracks].blank?

          playlist_info_data[:tracks]
        end

        def playlist_info_data
          @playlist_info_data ||=
            Spotify::Playlist::Info.call(
              playlist_id: spotify_id
            )[:playlist]
        end
      end
    end
  end
end
