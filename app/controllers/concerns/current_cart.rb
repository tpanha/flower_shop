module CurrentCart
	extend ActiveSupport::Concern # avalible to call to all controller  
	private
		def set_cart
			@cart = Cart.find(session[:cart_id]) # find session through cart_id
		rescue ActiveRecord::RecordNotFound # rescue when cart_id is null or not found 
			@cart = Cart.create # create cart_id
			session[:cart_id] = @cart.id # session of cart_id = cart_id 
			
		end


end