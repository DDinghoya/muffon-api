RSpec.describe LastFM::Artist::Profiles do
  subject { described_class }

  describe 'successful processing' do
    context 'when artist exists' do
      let(:output) do
        VCR.use_cassette 'services/lastfm/artist/profiles/success' do
          subject.call(artist: 'wild nothing', limit: 5, page: 2)
        end
      end

      it { expect(output).to eq(Helpers::LastFM::Artist.profiles_data) }
    end
  end

  describe 'no processing' do
    context 'when no artist name given' do
      let(:output) { subject.call }

      it { expect(output).to eq(Helpers::Base.bad_request_error) }
    end

    context 'when wrong artist name' do
      let(:output) do
        VCR.use_cassette 'services/lastfm/artist/profiles/wrong_name' do
          subject.call(artist: random)
        end
      end

      it { expect(output).to eq(Helpers::Base.not_found_error) }
    end
  end
end
