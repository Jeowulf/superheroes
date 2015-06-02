class SuperherosController < ApplicationController

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
    @superhero = Superhero.find(params[:id])
  end

  def update
    @superhero = Superhero.find(params[:id])
    @superhero.update_attributes(superhero_params)
    redirect_to superheros_path
  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def destroy
    @superhero = Superhero.find(params[:id])
    @superhero.destroy
    redirect_to superheros_path
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :powers, :secret_identity, :nemesis, :villains_captured, :image_url, :alliance)
  end
end
