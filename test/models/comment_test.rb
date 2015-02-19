require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "have a valid object" do
    comment = Comment.create(username: 'Peth', body: 'there is no place like 127.0.0.1')
    assert_equal comment.body, Comment.last.body
    assert_equal comment.username, Comment.last.username
  end
end