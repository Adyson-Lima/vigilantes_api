require 'rails_helper'

RSpec.describe Vigilante, type: :model do

  before{@vigilante = Vigilante.new}

  describe 'testes de preenchimento do model Vigilante' do

    it 'name consegue ser preenchido?' do
      @vigilante.name = 'dave'
      expect(@vigilante.name).to eq('dave')
    end

    it 'vehicle consegue ser preenchido?' do
      @vigilante.vehicle = 'Xanadu RV'
      expect(@vigilante.vehicle).to eq('Xanadu RV')
    end

  end

  describe 'testes de validacao do model Vigilante' do

    it 'objeto vehicle valido com campos obrigatorios preenchidos?' do
      @vigilante.name = ''
      @vigilante.vehicle = ''
      expect(@vigilante).to be_valid
    end

  end

end