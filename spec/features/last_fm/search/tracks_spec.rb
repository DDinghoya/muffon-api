require 'rails_helper'

RSpec.describe LastFM::Search::Tracks do
  subject { described_class }

  describe 'successful processing' do
    context 'when track exists' do
      let(:output) do
        VCR.use_cassette 'lastfm/search/tracks/success' do
          subject.call(
            track_title: 'chinatown',
            artist_name: 'wild nothing',
            limit: 5
          )
        end
      end

      it { expect(output).to eq(Helpers::LastFM.search_tracks_data) }
    end
  end

  describe 'no processing' do
    let(:not_found_data) { Helpers::LastFM.not_found_data }
    let(:empty_data) { Helpers::LastFM.search_tracks_empty_data }

    context 'when no track title given' do
      let(:output) do
        VCR.use_cassette 'lastfm/search/tracks/no_title' do
          subject.call(track_title: nil)
        end
      end

      it { expect(output).to eq(not_found_data) }
    end

    context 'when wrong track title' do
      let(:output) do
        VCR.use_cassette 'lastfm/search/tracks/wrong_title' do
          subject.call(track_title: Helpers::LastFM::RANDOM_STRING)
        end
      end

      it { expect(output).to eq(empty_data) }
    end
  end
end
