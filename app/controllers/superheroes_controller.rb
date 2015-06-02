class SuperherosController < ApplicationController

  def indexx
    @superhero = Superhero.all
  end

  def create
    superhero.create(superhero_params)
    redirect_to '/superheros'
  end

  def new
    @superhero = superhero.new
  end

  def edit
    @superhero = superhero.find(params[:id])
  end

  def update
    @superhero = superhero.find(params[:id])
    @superhero.update_attributes(superhero_params)
    redirect_to 'index_superheros_path'
  end

  def show
    @superhero = superhero.find(params[:id])
  end

  def destroy
    @superhero = superhero.find(params[:id])
    @superhero.destroy
    redirect_to 'index_superheros_path'
  end

  private

  def superhero_params
    params.require(:superhero).permit(:name, :powers, :secret_identity, :nemesis, :villains_captured, :image_url)
  end
end
