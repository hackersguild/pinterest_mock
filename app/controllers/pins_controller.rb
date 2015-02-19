class PinsController < ApplicationController
	def index
		@pins = Pin.all
		@comment = Comment.new
		@comments = Comment.all
	end

	def create
		Comment.create(comment_params)
		redirect_to :root
	end

	def increment
		p = Pin.find(params[:id])
		p.increment_likes
		p.save
		redirect_to :root
	end

	private

	def comment_params
		params.require(:comment).permit(:username, :body)
	end

end