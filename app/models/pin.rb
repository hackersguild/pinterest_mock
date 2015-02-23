class Pin < ActiveRecord::Base
	has_many :comments
	def increment_likes
		self.likes += 1
	end
end