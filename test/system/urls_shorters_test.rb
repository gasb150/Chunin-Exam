require "application_system_test_case"

class UrlsShortersTest < ApplicationSystemTestCase
  setup do
    @urls_shorter = urls_shorters(:one)
  end

  test "visiting the index" do
    visit urls_shorters_url
    assert_selector "h1", text: "Urls Shorters"
  end

  test "creating a Urls shorter" do
    visit urls_shorters_url
    click_on "New Urls Shorter"

    click_on "Create Urls shorter"

    assert_text "Urls shorter was successfully created"
    click_on "Back"
  end

  test "updating a Urls shorter" do
    visit urls_shorters_url
    click_on "Edit", match: :first

    click_on "Update Urls shorter"

    assert_text "Urls shorter was successfully updated"
    click_on "Back"
  end

  test "destroying a Urls shorter" do
    visit urls_shorters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Urls shorter was successfully destroyed"
  end
end
