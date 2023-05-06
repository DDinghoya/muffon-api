module Muffon
  module Utils
    class Proxy < Muffon::Base
      BASE_LINK =
        'http://server9.kproxy.com/doproxy.jsp'.freeze

      class << self
        def call(args = {})
          new(args).call
        end
      end

      def call
        return if not_all_args?

        data
      end

      private

      def primary_args
        [@args[:link]]
      end

      def data
        RestClient.get(
          link, headers
        )
      end

      def link
        response_data.css(
          'meta[http-equiv=refresh]'
        )[0]['content'].split(
          'url='
        )[1]
      end

      def response_data
        Nokogiri::HTML.parse(
          response
        )
      end

      def response
        RestClient.post(
          BASE_LINK,
          payload
        )
      end

      def payload
        { page: @args[:link] }
      end

      def headers
        {
          params:,
          cookies: cookies_formatted
        }
      end

      def params
        @args[:params] || {}
      end

      def cookies_formatted
        proxy_cookies
          .merge(cookies)
      end

      def proxy_cookies
        { 'KP_DAT2__' => kproxy_cookie }
      end

      def kproxy_cookie
        secrets.kproxy[:cookie]
      end

      def cookies
        @args[:cookies] || {}
      end
    end
  end
end
