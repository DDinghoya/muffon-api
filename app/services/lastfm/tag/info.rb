module LastFM
  module Tag
    class Info < LastFM::API
      private

      def service_info
        {
          api_method: 'tag.getInfo',
          response_data_node: 'tag'
        }
      end

      def primary_args
        [@args.tag]
      end

      def no_data?
        super || response_data['total'].zero?
      end

      def data
        { tag: tag_data }
      end

      def tag_data
        {
          name: response_data['name'],
          taggings_count: response_data['total'],
          taggers_count: response_data['reach'],
          description: description_truncated
        }
      end
    end
  end
end
