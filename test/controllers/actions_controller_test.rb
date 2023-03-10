require "test_helper"

class ActionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get actions_index_url
    assert_response :success
  end

  test "should get new" do
    get actions_new_url
    assert_response :success
  end

  test "should get create" do
    get actions_create_url
    assert_response :success
  end
end
