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

  describe 'GET /api/v1/communities/id' do
    it 'Consegue listar um community especifico e retornar status 200?' do
      get :show, params: {id: @community.id}
      expect(response.body).to include_json(name: 'debian')
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/communities' do
    it 'Consegue criar um community e retornar status 201?' do
      post :create, params: {community: {name: 'ruby', project: 'ruby'}, format: :json}
      expect(response.body).to include_json(name: 'ruby')
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/communities/id' do
    it 'Consegue atualizar um community e retornar status 200?' do
      community = Community.last
      patch :update, params: {community: {name: 'Rails', project: 'Ruby on Rails'}, id: community.id}
      expect(response.body).to include_json(name: 'Rails')
      expect(response).to have_http_status(200)
    end
  end

end