require "application_system_test_case"

class SuvivorsTest < ApplicationSystemTestCase
  setup do
    @suvivor = suvivors(:one)
  end

  test "visiting the index" do
    visit suvivors_url
    assert_selector "h1", text: "Suvivors"
  end

  test "creating a Suvivor" do
    visit suvivors_url
    click_on "New Suvivor"

    fill_in "Age", with: @suvivor.age
    fill_in "Gender", with: @suvivor.gender
    fill_in "Name", with: @suvivor.name
    click_on "Create Suvivor"

    assert_text "Suvivor was successfully created"
    click_on "Back"
  end

  test "updating a Suvivor" do
    visit suvivors_url
    click_on "Edit", match: :first

    fill_in "Age", with: @suvivor.age
    fill_in "Gender", with: @suvivor.gender
    fill_in "Name", with: @suvivor.name
    click_on "Update Suvivor"

    assert_text "Suvivor was successfully updated"
    click_on "Back"
  end

  test "destroying a Suvivor" do
    visit suvivors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suvivor was successfully destroyed"
  end
end
