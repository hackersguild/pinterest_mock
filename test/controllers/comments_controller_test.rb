require "test_helper"

class CommentsControllerTest < ActionController::TestCase
  test 'create new comment with pin_id test' do
    pin = Pin.create(title: 'example')

    post :create, pin_id: pin.id, comment: {username: 'some guy'}

    assert_equal 1, Pin.count
    pin.reload
    comment = pin.comments.first
    assert_equal 'some guy', comment.username
  end

end