class PinsController < ApplicationController
	def index
		@pins = Pin.all
		@comment = Comment.new
		@comments = Comment.all
	end

	def create
		Comment.create(body: params[:comment][:body], pin_id: params[:pin_id])
		redirect_to :root
	end

	def increment
		p = Pin.find(params[:id])
		p.increment_likes
		p.save
		redirect_to :root
	end
end