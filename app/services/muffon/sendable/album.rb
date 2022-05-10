module Muffon
  module Sendable
    class Album < Muffon::Base
      include Muffon::Utils::Album

      def call
        data
      end

      private

      def data
        {
          title:,
          artist: album['artist'],
          artists: album['artists'],
          image: album['image'],
          listeners_count:
        }
      end

      def title
        album['title']
      end

      def album
        @args[:album]
      end

      def artist_name
        album.dig(
          'artist', 'name'
        )
      end
    end
  end
end
