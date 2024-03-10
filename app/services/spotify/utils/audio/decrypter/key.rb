module Spotify
  module Utils
    module Audio
      class Decrypter
        class Key < Spotify::Utils::Audio::Decrypter
          BASE_LINK =
            'http://localhost:5000/key'.freeze

          private

          def primary_args
            [
              @args[:global_id],
              @args[:file_id]
            ]
          end

          def no_data?
            key_hex.blank?
          end

          def key_hex
            response_data['key']
          rescue Faraday::ServerError
            return unless production?

            `service muffon-spotify restart`

            call
          end

          def link
            BASE_LINK
          end

          def params
            {
              global_id:
                @args[:global_id],
              file_id:
                @args[:file_id]
            }
          end

          def data
            [key_hex].pack('H*')
          end
        end
      end
    end
  end
end
