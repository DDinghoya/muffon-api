module API
  module V1
    module Odnoklassniki
      class TracksController < API::V1::BaseController
        def info
          render_data_with_status
        end
      end
    end
  end
end
