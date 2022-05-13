module Muffon
  module Sendable
    class Playlist < Muffon::Base
      def call
        data
      end

      private

      def data
        return {} if find_playlist.blank?

        {
          id: find_playlist.id,
          title: find_playlist.title,
          profile: profile_data,
          image: image_data,
          tracks_count:
            find_playlist.tracks_count
        }.compact
      end

      def find_playlist
        @find_playlist ||=
          ::Playlist.find_by(
            id: playlist[:id]
          )
      end

      def playlist
        @args[:playlist].deep_symbolize_keys
      end

      def profile_data
        {
          id: playlist_profile.id,
          nickname: playlist_profile.nickname
        }
      end

      def playlist_profile
        @playlist_profile ||=
          find_playlist.profile
      end

      def image_data
        find_playlist
          .image_data
          &.slice(
            :extrasmall
          )
      end
    end
  end
end
