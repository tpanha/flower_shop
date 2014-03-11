class Product < ActiveRecord::Base

	validates :title, presence: true, :presence => { :message => "is required." } # repuired title 

	validates :price, numericality:{greater_than_or_equal_to: 0.01} # price must be a number and greater or equal than 0.01
	validates_uniqueness_of :title # title can not be the same


	validates :image_url, allow_blank: true, format:{               # image must be with the exstention gif jpg png           
					with: %r{\.(gif|jpg|png)\Z}i,
					message: "Must be url with gif , jpg , png " 

				}

	has_many :line_items

	# hook method 

	before_destroy :ensure_reference_any_line_item #handle error 

		private

		def ensure_reference_any_line_item  

			if line_items.empty?
				return true
			else
				errors.add(:base, "Line item is present")
				return false
			end
		end
end	
