require "application_system_test_case"

class FriendDbsTest < ApplicationSystemTestCase
  setup do
    @friend_db = friend_dbs(:one)
  end

  test "visiting the index" do
    visit friend_dbs_url
    assert_selector "h1", text: "Friend Dbs"
  end

  test "creating a Friend db" do
    visit friend_dbs_url
    click_on "New Friend Db"

    fill_in "Email", with: @friend_db.email
    fill_in "First name", with: @friend_db.first_name
    fill_in "Last name", with: @friend_db.last_name
    fill_in "Phone", with: @friend_db.phone
    fill_in "Twitter", with: @friend_db.twitter
    click_on "Create Friend db"

    assert_text "Friend db was successfully created"
    click_on "Back"
  end

  test "updating a Friend db" do
    visit friend_dbs_url
    click_on "Edit", match: :first

    fill_in "Email", with: @friend_db.email
    fill_in "First name", with: @friend_db.first_name
    fill_in "Last name", with: @friend_db.last_name
    fill_in "Phone", with: @friend_db.phone
    fill_in "Twitter", with: @friend_db.twitter
    click_on "Update Friend db"

    assert_text "Friend db was successfully updated"
    click_on "Back"
  end

  test "destroying a Friend db" do
    visit friend_dbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Friend db was successfully destroyed"
  end
end
