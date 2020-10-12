require 'rails_helper'

RSpec.describe VK::Search::Tracks do
  subject { described_class }

  describe 'successful processing' do
    context 'when query string given' do
      let(:output) do
        VCR.use_cassette 'vk/search/tracks/success' do
          subject.call(query: 'wild nothing nocturne')
        end
      end

      it { expect(output).to eq(Helpers::VK.search_tracks_data) }
    end
  end

  describe 'no processing' do
    context 'when no query string given' do
      let(:output) do
        VCR.use_cassette 'vk/search/tracks/no_query' do
          subject.call
        end
      end

      it { expect(output).to eq(Helpers::VK.bad_request_error) }
    end

    context 'when wrong query string' do
      let(:output) do
        VCR.use_cassette 'vk/search/tracks/wrong_query' do
          subject.call(query: Helpers::VK::RANDOM_STRING)
        end
      end

      it { expect(output).to eq(Helpers::VK.not_found_error) }
    end
  end
end
