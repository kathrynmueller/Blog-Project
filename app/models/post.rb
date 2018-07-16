class Post < ApplicationRecord
	#associations 
	belongs_to :user
	has_many :comments

end
