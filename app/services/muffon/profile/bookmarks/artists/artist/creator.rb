module Muffon
  module Profile
    module Bookmarks
      class Artists
        class Artist
          class Creator < Muffon::Profile::Base
            private

            def primary_args
              [
                @args.profile_id,
                @args.token,
                @args.artist_id
              ]
            end

            def data
              return forbidden if wrong_profile?

              bookmark_artist

              return errors_data if errors?

              { bookmark_id: bookmark_artist.id }
            end

            def bookmark_artist
              @bookmark_artist ||=
                profile.bookmark_artists.where(
                  artist_id: @args.artist_id
                ).first_or_create
            end

            def errors?
              bookmark_artist.errors.any?
            end
          end
        end
      end
    end
  end
end
