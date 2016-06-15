class Product < ActiveRecord::Base
	searchkick
	belongs_to :category

	
end
