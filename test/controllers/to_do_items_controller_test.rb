require "test_helper"

class ToDoItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get to_do_items_new_url
    assert_response :success
  end

  test "should get create" do
    get to_do_items_create_url
    assert_response :success
  end
end
