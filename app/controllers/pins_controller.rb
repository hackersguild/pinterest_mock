class PinsController < ApplicationController
	def index
		@pins = Pin.all
	end

	def increment
		p = Pin.find(params[:id])
		p.increment_likes
		p.save
		redirect_to :root
	end

end