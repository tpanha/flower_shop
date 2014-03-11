class FreeFlowersController < ApplicationController
  before_action :set_free_flower, only: [:show, :edit, :update, :destroy]
  
 before_action :authenticate_user!, :unless=>proc{|c| c.devise_controller?}

  # GET /free_flowers
  # GET /free_flowers.json
  def index
    @free_flowers = FreeFlower.all
  end

  # GET /free_flowers/1
  # GET /free_flowers/1.json
  def show
  end

  # GET /free_flowers/new
  def new
    @free_flower = FreeFlower.new
  end

  # GET /free_flowers/1/edit
  def edit
  end

  # POST /free_flowers
  # POST /free_flowers.json
  def create
    @free_flower = FreeFlower.new(free_flower_params)

    respond_to do |format|
      if @free_flower.save
        format.html { redirect_to @free_flower, notice: 'Free flower was successfully created.' }
        format.json { render action: 'show', status: :created, location: @free_flower }
      else
        format.html { render action: 'new' }
        format.json { render json: @free_flower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /free_flowers/1
  # PATCH/PUT /free_flowers/1.json
  def update
    respond_to do |format|
      if @free_flower.update(free_flower_params)
        format.html { redirect_to @free_flower, notice: 'Free flower was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @free_flower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /free_flowers/1
  # DELETE /free_flowers/1.json
  def destroy
    @free_flower.destroy
    respond_to do |format|
      format.html { redirect_to free_flowers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_free_flower
      @free_flower = FreeFlower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def free_flower_params
      params.require(:free_flower).permit(:title, :description, :image_url)
    end
end
