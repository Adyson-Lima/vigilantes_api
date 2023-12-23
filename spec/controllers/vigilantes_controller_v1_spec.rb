require 'rails_helper'

RSpec.describe Api::V1::VigilantesController, type: :controller do

  before{@vigilante = Vigilane.create(name: 'J. Torque', vehicle: '68 Jefferson')}

  describe 'GET /api/v1/vigilantes' do
    it 'Consegue listar todos os vigilantes e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end