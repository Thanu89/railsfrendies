require 'test_helper'

class FriendDBsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friend_db = friend_dbs(:one)
  end

  test "should get index" do
    get friend_dbs_url
    assert_response :success
  end

  test "should get new" do
    get new_friend_db_url
    assert_response :success
  end

  test "should create friend_db" do
    assert_difference('FriendDb.count') do
      post friend_dbs_url, params: { friend_db: { email: @friend_db.email, first_name: @friend_db.first_name, last_name: @friend_db.last_name, phone: @friend_db.phone, twitter: @friend_db.twitter } }
    end

    assert_redirected_to friend_db_url(FriendDb.last)
  end

  test "should show friend_db" do
    get friend_db_url(@friend_db)
    assert_response :success
  end

  test "should get edit" do
    get edit_friend_db_url(@friend_db)
    assert_response :success
  end

  test "should update friend_db" do
    patch friend_db_url(@friend_db), params: { friend_db: { email: @friend_db.email, first_name: @friend_db.first_name, last_name: @friend_db.last_name, phone: @friend_db.phone, twitter: @friend_db.twitter } }
    assert_redirected_to friend_db_url(@friend_db)
  end

  test "should destroy friend_db" do
    assert_difference('FriendDb.count', -1) do
      delete friend_db_url(@friend_db)
    end

    assert_redirected_to friend_dbs_url
  end
end
