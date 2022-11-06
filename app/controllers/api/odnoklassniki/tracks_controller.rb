module API
  module Odnoklassniki
    class TracksController < API::BaseController
      def info; end

      private

      def info_data
        ::Odnoklassniki::Track::Info.call(
          params.slice(
            *%i[track_id profile_id token]
          )
        )
      end
    end
  end
end
