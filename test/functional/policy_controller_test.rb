require 'test_helper'

class PolicyControllerTest < ActionController::TestCase
  test "should get view" do
    get :view
    assert_response :success
  end

end
