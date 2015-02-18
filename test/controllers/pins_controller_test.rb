require "test_helper"

class PinsControllerTest < ActionController::TestCase
	test 'index_test' do
		get :index

		assert_response :success
	end

end