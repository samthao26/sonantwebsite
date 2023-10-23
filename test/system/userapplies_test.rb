require "application_system_test_case"

class UserappliesTest < ApplicationSystemTestCase
  setup do
    @userapplied = userapplies(:one)
  end

  test "visiting the index" do
    visit userapplies_url
    assert_selector "h1", text: "Userapplies"
  end

  test "should create userapply" do
    visit userapplies_url
    click_on "New userapply"

    fill_in "Cv", with: @userapplied.cv
    fill_in "Email", with: @userapplied.email
    fill_in "Name", with: @userapplied.name
    click_on "Create Userapply"

    assert_text "Userapply was successfully created"
    click_on "Back"
  end

  test "should update Userapply" do
    visit userapply_url(@userapplied)
    click_on "Edit this userapply", match: :first

    fill_in "Cv", with: @userapplied.cv
    fill_in "Email", with: @userapplied.email
    fill_in "Name", with: @userapplied.name
    click_on "Update Userapply"

    assert_text "Userapply was successfully updated"
    click_on "Back"
  end

  test "should destroy Userapply" do
    visit userapply_url(@userapplied)
    click_on "Destroy this userapply", match: :first

    assert_text "Userapply was successfully destroyed"
  end
end
