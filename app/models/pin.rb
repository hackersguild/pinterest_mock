class Pin < ActiveRecord::Base
	def increment_likes
		self.likes += 1
	end
end