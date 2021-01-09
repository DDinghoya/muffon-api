require 'rails_helper'

RSpec.describe API::V1::LastFM::Artists::TracksController, type: :controller do
  let(:success) { { artist: 'Kate Bush', track: 'Hounds Of Love' } }
  let(:wrong_track) do
    { artist: 'Kate Bush', track: Helpers::Base::RANDOM_STRING }
  end
  let(:wrong_artist) do
    { artist: Helpers::Base::RANDOM_STRING, track: 'Hounds Of Love' }
  end

  describe 'GET :info' do
    it 'returns 200' do
      VCR.use_cassette 'api/v1/lastfm/artists/tracks/info/success' do
        get :info, params: success
        expect(response).to have_http_status(:ok)
      end
    end

    it 'returns 400 if no track title' do
      get :info, params: { artist: 'Kate Bush', track: ' ' }
      expect(response).to have_http_status(:bad_request)
    end

    it 'returns 404 if wrong track title' do
      VCR.use_cassette 'api/v1/lastfm/artists/tracks/info/wrong_track' do
        get :info, params: wrong_track
        expect(response).to have_http_status(:not_found)
      end
    end

    it 'returns 400 if no artist name' do
      get :info, params: { artist: ' ', track: 'Hounds Of Love' }
      expect(response).to have_http_status(:bad_request)
    end

    it 'returns 404 if wrong artist name' do
      VCR.use_cassette 'api/v1/lastfm/artists/tracks/info/wrong_artist' do
        get :info, params: wrong_artist
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'GET :description' do
    it 'returns 200' do
      VCR.use_cassette 'api/v1/lastfm/artists/tracks/desc/success' do
        get :description, params: success
        expect(response).to have_http_status(:ok)
      end
    end

    it 'returns 400 if no track title' do
      get :description, params: { artist: 'Kate Bush', track: ' ' }
      expect(response).to have_http_status(:bad_request)
    end

    it 'returns 404 if wrong track title' do
      VCR.use_cassette 'api/v1/lastfm/artists/tracks/desc/wrong_track' do
        get :description, params: wrong_track
        expect(response).to have_http_status(:not_found)
      end
    end

    it 'returns 400 if no artist name' do
      get :description, params: { artist: ' ', track: 'Hounds Of Love' }
      expect(response).to have_http_status(:bad_request)
    end

    it 'returns 404 if wrong artist name' do
      VCR.use_cassette 'api/v1/lastfm/artists/tracks/desc/wrong_artist' do
        get :description, params: wrong_artist
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'GET :tags' do
    it 'returns 200' do
      VCR.use_cassette 'api/v1/lastfm/artists/tracks/tags/success' do
        get :tags, params: success
        expect(response).to have_http_status(:ok)
      end
    end

    it 'returns 400 if no track title' do
      get :tags, params: { artist: 'Kate Bush', track: ' ' }
      expect(response).to have_http_status(:bad_request)
    end

    it 'returns 404 if wrong track title' do
      VCR.use_cassette 'api/v1/lastfm/artists/tracks/tags/wrong_track' do
        get :tags, params: wrong_track
        expect(response).to have_http_status(:not_found)
      end
    end

    it 'returns 400 if no artist name' do
      get :tags, params: { artist: ' ', track: 'Hounds Of Love' }
      expect(response).to have_http_status(:bad_request)
    end

    it 'returns 404 if wrong artist name' do
      VCR.use_cassette 'api/v1/lastfm/artists/tracks/tags/wrong_artist' do
        get :tags, params: wrong_artist
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'GET :similar' do
    it 'returns 200' do
      VCR.use_cassette 'api/v1/lastfm/artists/tracks/similar/success' do
        get :similar, params: success
        expect(response).to have_http_status(:ok)
      end
    end

    it 'returns 400 if no track title' do
      get :similar, params: { artist: 'Kate Bush', track: ' ' }
      expect(response).to have_http_status(:bad_request)
    end

    it 'returns 404 if wrong track title' do
      VCR.use_cassette 'api/v1/lastfm/artists/tracks/similar/wrong_track' do
        get :similar, params: wrong_track
        expect(response).to have_http_status(:not_found)
      end
    end

    it 'returns 400 if no artist name' do
      get :similar, params: { artist: ' ', track: 'Hounds Of Love' }
      expect(response).to have_http_status(:bad_request)
    end

    it 'returns 404 if wrong artist name' do
      VCR.use_cassette 'api/v1/lastfm/artists/tracks/similar/wrong_artist' do
        get :similar, params: wrong_artist
        expect(response).to have_http_status(:not_found)
      end
    end
  end
end
