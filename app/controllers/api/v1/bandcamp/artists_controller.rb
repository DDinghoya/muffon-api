module API
  module V1
    module Bandcamp
      class ArtistsController < API::V1::BaseController
        def albums
          render_data_with_status
        end
      end
    end
  end
end
