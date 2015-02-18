require 'test_helper'

class PinTest < ActiveSupport::TestCase
  test "have a valid object" do
    pin = Pin.new 
    pin.title = 'there is no place like 127.0.0.1'
    pin.save
    assert_equal 'there is no place like 127.0.0.1', Pin.last.title
  end
  test "increment likes" do
  	pin = Pin.create(title: 'Lusaka', likes: 5)
  	pin.increment_likes
  	assert_equal 6, pin.likes
  end
end
