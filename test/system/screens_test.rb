require "application_system_test_case"

class ScreensTest < ApplicationSystemTestCase
  setup do
    @screen = screens(:one)
  end

  test "visiting the index" do
    visit screens_url
    assert_selector "h1", text: "Screens"
  end

  test "creating a Screen" do
    visit screens_url
    click_on "New Screen"

    fill_in "Cinema", with: @screen.cinema_id
    fill_in "Film Playing", with: @screen.film_playing
    fill_in "Screen No", with: @screen.screen_no
    click_on "Create Screen"

    assert_text "Screen was successfully created"
    click_on "Back"
  end

  test "updating a Screen" do
    visit screens_url
    click_on "Edit", match: :first

    fill_in "Cinema", with: @screen.cinema_id
    fill_in "Film Playing", with: @screen.film_playing
    fill_in "Screen No", with: @screen.screen_no
    click_on "Update Screen"

    assert_text "Screen was successfully updated"
    click_on "Back"
  end

  test "destroying a Screen" do
    visit screens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Screen was successfully destroyed"
  end
end
