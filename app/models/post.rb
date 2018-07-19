class Post < ApplicationRecord
	
	# uploader
	mount_uploader :image, ImageUploader

	#associations 
	belongs_to :user
	has_many :comments

	paginates_per 5

end
