module YandexMusic
  module Search
    class Base < YandexMusic::Base
      include YandexMusic::Paginated

      private

      def primary_args
        [@args.query]
      end

      def no_data?
        collection_list.blank?
      end

      def collection_list
        @collection_list ||=
          response_data.dig(collection_name, 'items')
      end

      def link
        'https://music.yandex.ru/handlers/music-search.jsx'
      end

      def params
        {
          type: collection_name,
          text: @args.query,
          page: page - 1,
          lang: 'en'
        }
      end

      def data
        { search: search_data }
      end

      def search_data
        {
          page: page,
          total_pages: total_pages,
          collection_name.to_sym => collection_data
        }
      end

      def total_items_count
        response_data.dig('pager', 'total')
      end

      def limit
        response_data.dig('pager', 'perPage')
      end

      def collection_data
        collection_list.map { |i| collection_item_data(i) }
      end
    end
  end
end
