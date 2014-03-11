class StoreController < ApplicationController
  

  include CurrentCart

  before_action :set_cart # befor_action "before action modle or controller process"

  def index
  @products = Product.order(:title)
  end

  def show
  	@product = Product.find(params[:product_id])
  end

  
  
end
