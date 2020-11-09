require 'rails_helper'

RSpec.describe VK::Track::Info do
  subject { described_class }

  describe 'successful processing' do
    context 'when query string given' do
      let(:output) do
        VCR.use_cassette 'vk/track/info/success' do
          subject.call(query: 'wild nothing nocturne')
        end
      end

      it { expect(output).to eq(Helpers::VK::Track.info_data) }
    end
  end

  describe 'no processing' do
    context 'when no query string given' do
      let(:output) { subject.call }

      it { expect(output).to eq(Helpers::Base.bad_request_error) }
    end

    context 'when wrong query string' do
      let(:output) do
        VCR.use_cassette 'vk/track/info/wrong_query' do
          subject.call(query: Helpers::Base::RANDOM_STRING)
        end
      end

      it { expect(output).to eq(Helpers::Base.not_found_error) }
    end

    context 'when out of index' do
      let(:output) do
        VCR.use_cassette 'vk/track/info/out_of_index' do
          subject.call(query: 'wild nothing nocturne', index: 50)
        end
      end

      it { expect(output).to eq(Helpers::Base.not_found_error) }
    end
  end
end
