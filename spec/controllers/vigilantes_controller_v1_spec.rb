require 'rails_helper'

RSpec.describe Api::V1::VigilantesController, type: :controller do

  before{@vigilante = Vigilante.create(name: 'J. Torque', vehicle: '68 Jefferson')}

  describe 'GET /api/v1/vigilantes' do
    it 'Consegue listar todos os vigilantes e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/vigilantes/id' do
    it 'Consegue listar um vigilante especifico e retornar status 200?' do
      get :show, params: {id: @vigilante.id}
      expect(response.body).to include_json(name: 'J. Torque')
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/vigilantes' do
    it 'Consegue criar um vigilante e retornar status 201?' do
      post :create, params: {vigilante: {name: 'Chassey Blue', vehicle: '67 ratler'}, format: :json}
      expect(response.body).to include_json(name: 'Chassey Blue')
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/vigilantes/id' do
    it 'Consegue atualizar um vigilante e retornar status 200?' do
      vigilante = Vigilante.last
      patch :update, params: {vigilante: {name: 'Convoy', vehicle: '72 moth truck'}, id: vigilante.id}
      expect(response.body).to include_json(name: 'Convoy')
      expect(response).to have_http_status(200)
    end
  end

  describe 'DELETE /api/v1/vigilantes/id' do
    it 'Consegue excluir um vigilante e retornar status 204?' do
      vigilante = Vigilante.last
      delete :destroy, params: {id: vigilante.id}
      expect(Vigilante.all).not_to include(vigilante)
      expect(response).to have_http_status(204)
    end
  end

end