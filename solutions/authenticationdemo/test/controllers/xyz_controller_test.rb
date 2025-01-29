require "test_helper"

class XyzControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get xyz_index_url
    assert_response :success
  end

  test "should get new" do
    get xyz_new_url
    assert_response :success
  end

  test "should get create" do
    get xyz_create_url
    assert_response :success
  end

  test "should get edit" do
    get xyz_edit_url
    assert_response :success
  end

  test "should get update" do
    get xyz_update_url
    assert_response :success
  end

  test "should get destroy" do
    get xyz_destroy_url
    assert_response :success
  end
end
