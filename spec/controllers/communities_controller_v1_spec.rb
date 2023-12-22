require 'rails_helper'

RSpec.describe Api::V1::CommunitiesController, type: :controller do

  before{@community = Community.create(name: 'debian', project: 'Debian')}

  describe 'GET /api/v1/communities' do
    it 'Consegue listar todos os communities e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200) 
    end
  end

end