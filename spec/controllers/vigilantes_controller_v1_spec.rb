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

end