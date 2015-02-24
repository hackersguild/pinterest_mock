class CommentsController < ApplicationController
  def create
    parent_pin = Pin.find(params[:pin_id])
    parent_pin.comments.create(comment_params)
    redirect_to :root
  end

  private

  def comment_params
    params.require(:comment).permit(:username, :body)
  end
end