module VK
  module Search
    class Albums < VK::Search::Base
      private

      def search_data
        { albums: albums }
      end

      def albums
        official_albums.map do |a|
          {
            title: CGI.unescapeHTML(a['title']),
            artist: CGI.unescapeHTML(artist(a)),
            tracks: tracks(a)
          }
        end
      end

      def official_albums
        playlists.select { |a| a['isOfficial'] }
      end

      def artist(album)
        album['authorName'].match(%r{<a.+>(.+)</a>})[1]
      end

      def tracks(album)
        album['list'].map do |t|
          {
            title: CGI.unescapeHTML(t[3]),
            artist: CGI.unescapeHTML(t[4]),
            length: t[5],
            audio_id: audio_id(t)
          }
        end
      end
    end
  end
end
