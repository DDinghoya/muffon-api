module LastFM
  module Web
    class Base < LastFM::Base
      private

      def response_data
        @response_data ||=
          Nokogiri::HTML.parse(
            response
          )
      end

      def response
        Muffon::Utils::Proxy.call(
          link:,
          params:,
          cookies:
        )
      end

      def params
        {}
      end

      def cookies
        { lfmanon: '0' }
      end

      def param_formatted(param)
        CGI.escape(
          CGI.escape(
            super
          )
        )
      end
    end
  end
end
