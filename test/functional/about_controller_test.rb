require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  test "should get view" do
    get :view
    assert_response :success
  end

end
