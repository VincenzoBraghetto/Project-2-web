require "application_system_test_case"

class PagesControllersTest < ApplicationSystemTestCase
  setup do
    @pages_controller = pages_controllers(:one)
  end

  test "visiting the index" do
    visit pages_controllers_url
    assert_selector "h1", text: "Pages controllers"
  end

  test "should create pages controller" do
    visit pages_controllers_url
    click_on "New pages controller"

    click_on "Create Pages controller"

    assert_text "Pages controller was successfully created"
    click_on "Back"
  end

  test "should update Pages controller" do
    visit pages_controller_url(@pages_controller)
    click_on "Edit this pages controller", match: :first

    click_on "Update Pages controller"

    assert_text "Pages controller was successfully updated"
    click_on "Back"
  end

  test "should destroy Pages controller" do
    visit pages_controller_url(@pages_controller)
    click_on "Destroy this pages controller", match: :first

    assert_text "Pages controller was successfully destroyed"
  end
end
