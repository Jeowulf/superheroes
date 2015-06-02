class SuperherosController < ApplicationController

  before_action :load_superhero, only: [:show, :update, :destroy, :edit]

  def index
    @superhero = Superhero.all
  end

  def create
    Superhero.create(superhero_params)
    redirect_to superheros_path
  end

  def new
    @superhero = Superhero.new
  end

  def edit
  end

  def update
    @superhero.update_attributes(superhero_params)
    redirect_to superheros_path
  end

  def show
  end

  def destroy
    @superhero.destroy
    redirect_to superheros_path
  end

  private

  def load_superhero
    @superhero = Superhero.find(params[:id])
  end

  def superhero_params
    params.require(:superhero).permit(:name, :powers, :secret_identity, :nemesis, :villains_captured, :image_url, :alliance)
  end
end
