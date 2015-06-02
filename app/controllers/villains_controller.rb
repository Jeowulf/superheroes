class VillainsController < ApplicationController
  before_action :set_villain, only: [:show, :edit, :update, :destroy]

  # GET /villains
  # GET /villains.json
  def index
    @villains = Villain.all
  end

  # GET /villains/1
  # GET /villains/1.json
  def show
  end

  # GET /villains/new
  def new
    @villain = Villain.new
  end

  # GET /villains/1/edit
  def edit
  end

  # POST /villains
  # POST /villains.json
  def create
    @villain = Villain.new(villain_params)

    respond_to do |format|
      if @villain.save
        format.html { redirect_to @villain, notice: 'Villain was successfully created.' }
        format.json { render :show, status: :created, location: @villain }
      else
        format.html { render :new }
        format.json { render json: @villain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /villains/1
  # PATCH/PUT /villains/1.json
  def update
    respond_to do |format|
      if @villain.update(villain_params)
        format.html { redirect_to @villain, notice: 'Villain was successfully updated.' }
        format.json { render :show, status: :ok, location: @villain }
      else
        format.html { render :edit }
        format.json { render json: @villain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /villains/1
  # DELETE /villains/1.json
  def destroy
    @villain.destroy
    respond_to do |format|
      format.html { redirect_to villains_url, notice: 'Villain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_villain
      @villain = Villain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def villain_params
      params.require(:villain).permit(:name, :arch_nemesis, :powers, :evil_plan, :superhero_id)
    end
end
