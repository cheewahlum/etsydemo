class Listing < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "default.jpeg"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]  
	#  added above line to fix error app/controllers/listings_controller.rb:44:in `block in update' app/controllers/listings_controller.rb:43:in `update' 
end
