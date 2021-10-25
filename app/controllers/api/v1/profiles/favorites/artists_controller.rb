module API
  module V1
    module Profiles
      module Favorites
        class ArtistsController < API::V1::ProfilesController
          def index
            render_data_with_status
          end

          def create
            render_data_with_status
          end

          def destroy
            render_data_with_status
          end

          private

          def index_data
            Muffon::Profile::Favorites::Artists.call(
              params.slice(
                *%i[profile_id page limit]
              )
            )
          end

          def create_data
            Muffon::Profile::Favorites::Artists::Artist::Creator.call(
              params.slice(
                *%i[profile_id token artist_id]
              )
            )
          end

          def destroy_data
            Muffon::Profile::Favorites::Artists::Artist::Destroyer.call(
              params.slice(
                *%i[profile_id token favorite_id]
              )
            )
          end
        end
      end
    end
  end
end
