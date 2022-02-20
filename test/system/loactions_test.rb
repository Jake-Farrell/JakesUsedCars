require "application_system_test_case"

class LoactionsTest < ApplicationSystemTestCase
  setup do
    @loaction = loactions(:one)
  end

  test "visiting the index" do
    visit loactions_url
    assert_selector "h1", text: "Loactions"
  end

  test "should create loaction" do
    visit loactions_url
    click_on "New loaction"

    click_on "Create Loaction"

    assert_text "Loaction was successfully created"
    click_on "Back"
  end

  test "should update Loaction" do
    visit loaction_url(@loaction)
    click_on "Edit this loaction", match: :first

    click_on "Update Loaction"

    assert_text "Loaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Loaction" do
    visit loaction_url(@loaction)
    click_on "Destroy this loaction", match: :first

    assert_text "Loaction was successfully destroyed"
  end
end
