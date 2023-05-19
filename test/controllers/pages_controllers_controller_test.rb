require "test_helper"

class PagesControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pages_controller = pages_controllers(:one)
  end

  test "should get index" do
    get pages_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_pages_controller_url
    assert_response :success
  end

  test "should create pages_controller" do
    assert_difference("PagesController.count") do
      post pages_controllers_url, params: { pages_controller: {  } }
    end

    assert_redirected_to pages_controller_url(PagesController.last)
  end

  test "should show pages_controller" do
    get pages_controller_url(@pages_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_pages_controller_url(@pages_controller)
    assert_response :success
  end

  test "should update pages_controller" do
    patch pages_controller_url(@pages_controller), params: { pages_controller: {  } }
    assert_redirected_to pages_controller_url(@pages_controller)
  end

  test "should destroy pages_controller" do
    assert_difference("PagesController.count", -1) do
      delete pages_controller_url(@pages_controller)
    end

    assert_redirected_to pages_controllers_url
  end
end
