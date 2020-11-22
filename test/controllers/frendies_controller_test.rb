require 'test_helper'

class FrendiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frendy = frendies(:one)
  end

  test "should get index" do
    get frendies_url
    assert_response :success
  end

  test "should get new" do
    get new_frendy_url
    assert_response :success
  end

  test "should create frendy" do
    assert_difference('Frendy.count') do
      post frendies_url, params: { frendy: { email: @frendy.email, first_name: @frendy.first_name, last_name: @frendy.last_name, phone: @frendy.phone, twitter: @frendy.twitter } }
    end

    assert_redirected_to frendy_url(Frendy.last)
  end

  test "should show frendy" do
    get frendy_url(@frendy)
    assert_response :success
  end

  test "should get edit" do
    get edit_frendy_url(@frendy)
    assert_response :success
  end

  test "should update frendy" do
    patch frendy_url(@frendy), params: { frendy: { email: @frendy.email, first_name: @frendy.first_name, last_name: @frendy.last_name, phone: @frendy.phone, twitter: @frendy.twitter } }
    assert_redirected_to frendy_url(@frendy)
  end

  test "should destroy frendy" do
    assert_difference('Frendy.count', -1) do
      delete frendy_url(@frendy)
    end

    assert_redirected_to frendies_url
  end
end
