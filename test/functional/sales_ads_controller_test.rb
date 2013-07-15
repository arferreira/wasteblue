require 'test_helper'

class SalesAdsControllerTest < ActionController::TestCase
  setup do
    @sales_ad = sales_ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_ad" do
    assert_difference('SalesAd.count') do
      post :create, sales_ad: { category_id: @sales_ad.category_id, title: @sales_ad.title, user_type: @sales_ad.user_type }
    end

    assert_redirected_to sales_ad_path(assigns(:sales_ad))
  end

  test "should show sales_ad" do
    get :show, id: @sales_ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_ad
    assert_response :success
  end

  test "should update sales_ad" do
    put :update, id: @sales_ad, sales_ad: { category_id: @sales_ad.category_id, title: @sales_ad.title, user_type: @sales_ad.user_type }
    assert_redirected_to sales_ad_path(assigns(:sales_ad))
  end

  test "should destroy sales_ad" do
    assert_difference('SalesAd.count', -1) do
      delete :destroy, id: @sales_ad
    end

    assert_redirected_to sales_ads_path
  end
end
