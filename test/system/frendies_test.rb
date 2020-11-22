require "application_system_test_case"

class FrendiesTest < ApplicationSystemTestCase
  setup do
    @frendy = frendies(:one)
  end

  test "visiting the index" do
    visit frendies_url
    assert_selector "h1", text: "Frendies"
  end

  test "creating a Frendy" do
    visit frendies_url
    click_on "New Frendy"

    fill_in "Email", with: @frendy.email
    fill_in "First name", with: @frendy.first_name
    fill_in "Last name", with: @frendy.last_name
    fill_in "Phone", with: @frendy.phone
    fill_in "Twitter", with: @frendy.twitter
    click_on "Create Frendy"

    assert_text "Frendy was successfully created"
    click_on "Back"
  end

  test "updating a Frendy" do
    visit frendies_url
    click_on "Edit", match: :first

    fill_in "Email", with: @frendy.email
    fill_in "First name", with: @frendy.first_name
    fill_in "Last name", with: @frendy.last_name
    fill_in "Phone", with: @frendy.phone
    fill_in "Twitter", with: @frendy.twitter
    click_on "Update Frendy"

    assert_text "Frendy was successfully updated"
    click_on "Back"
  end

  test "destroying a Frendy" do
    visit frendies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frendy was successfully destroyed"
  end
end
