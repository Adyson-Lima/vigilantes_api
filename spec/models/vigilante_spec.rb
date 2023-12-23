require 'rails_helper'

RSpec.describe Vigilante, type: :model do

  before{@vigilante = Vigilante.new}

  describe 'testes de preenchimento do model Vigilante' do

    it 'name consegue ser preenchido?' do
      @vigilante.name = 'dave'
      expect(@vigilante.name).to eq('dave')
    end

    it 'vehicle consegue ser preenchido?' do
      @vigilante.vehicle = ''
      expect(@vigilante.vehicle).to eq('Xanadu RV')
    end

  end

end