require "application_system_test_case"

class LionsTest < ApplicationSystemTestCase
  setup do
    @lion = lions(:one)
  end

  test "visiting the index" do
    visit lions_url
    assert_selector "h1", text: "Lions"
  end

  test "creating a Lion" do
    visit lions_url
    click_on "New Lion"

    fill_in "Content", with: @lion.content
    fill_in "Name", with: @lion.name
    fill_in "Title", with: @lion.title
    click_on "Create Lion"

    assert_text "Lion was successfully created"
    click_on "Back"
  end

  test "updating a Lion" do
    visit lions_url
    click_on "Edit", match: :first

    fill_in "Content", with: @lion.content
    fill_in "Name", with: @lion.name
    fill_in "Title", with: @lion.title
    click_on "Update Lion"

    assert_text "Lion was successfully updated"
    click_on "Back"
  end

  test "destroying a Lion" do
    visit lions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lion was successfully destroyed"
  end
end
