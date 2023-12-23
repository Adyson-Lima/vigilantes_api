class Api::V1::VigilantesController < ApplicationController

  before_action :set_vigilante, only: %i[show] # show update destroy

  def index
    @vigilantes = Vigilante.all 
    render json: @vigilantes
  end

  def show
    render json: @vigilante
  end

private

def set_vigilante
  @vigilante = Vigilante.find(params[:id])
end

def vigilante_params
  params.require(:vigilante).permit(:name, :vehicle)
end

end