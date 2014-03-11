class FreeController < ApplicationController
	before_action :authenticate_user!, :unless=>proc{|c| c.devise_controller?}
  def index
  		@free_flowers = FreeFlower.all
  end
end
