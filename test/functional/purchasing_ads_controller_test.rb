require 'test_helper'

class PurchasingAdsControllerTest < ActionController::TestCase
  setup do
    @purchasing_ad = purchasing_ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchasing_ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchasing_ad" do
    assert_difference('PurchasingAd.count') do
      post :create, purchasing_ad: { category_id: @purchasing_ad.category_id, title: @purchasing_ad.title, user_type: @purchasing_ad.user_type }
    end

    assert_redirected_to purchasing_ad_path(assigns(:purchasing_ad))
  end

  test "should show purchasing_ad" do
    get :show, id: @purchasing_ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchasing_ad
    assert_response :success
  end

  test "should update purchasing_ad" do
    put :update, id: @purchasing_ad, purchasing_ad: { category_id: @purchasing_ad.category_id, title: @purchasing_ad.title, user_type: @purchasing_ad.user_type }
    assert_redirected_to purchasing_ad_path(assigns(:purchasing_ad))
  end

  test "should destroy purchasing_ad" do
    assert_difference('PurchasingAd.count', -1) do
      delete :destroy, id: @purchasing_ad
    end

    assert_redirected_to purchasing_ads_path
  end
end
