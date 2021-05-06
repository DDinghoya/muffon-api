require 'rails_helper'

RSpec.describe API::V1::Deezer::ArtistsController, type: :controller do
  describe 'GET :albums' do
    it 'returns 200 if artist_id present' do
      VCR.use_cassette 'api/v1/deezer/artists/albums/success' do
        get :albums, params: { artist_id: '1049' }
      end

      expect(response).to have_http_status(:ok)
    end

    it 'returns 404 if wrong artist_id' do
      VCR.use_cassette 'api/v1/deezer/artists/albums/wrong_id' do
        get :albums, params: { artist_id: random }
      end

      expect(response).to have_http_status(:not_found)
    end
  end
end
