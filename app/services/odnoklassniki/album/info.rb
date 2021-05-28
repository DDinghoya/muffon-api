module Odnoklassniki
  module Album
    class Info < Odnoklassniki::Album::Base
      private

      def album_data
        album_base_data
          .merge(album_extra_data)
          .merge(with_more_data)
      end

      def album_base_data
        {
          title: title,
          odnoklassniki_id: odnoklassniki_id,
          artist: artist_formatted,
          artists: artists,
          source_id: SOURCE_ID
        }
      end

      def album_extra_data
        {
          image: image_data,
          release_date: release_date,
          tags: tags.first(5),
          tracks: tracks
        }
      end

      def tracks
        tracks_list.map do |t|
          track_data_formatted(t)
        end
      end

      def tracks_list
        response_data['tracks']
      end

      def track_data_formatted(track)
        Odnoklassniki::Album::Info::Track.call(
          track: track
        )
      end
    end
  end
end
