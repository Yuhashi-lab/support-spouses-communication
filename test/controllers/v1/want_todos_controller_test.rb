require 'test_helper'

class V1::WantTodosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get v1_want_todos_index_url
    assert_response :success
  end

  test "should get show" do
    get v1_want_todos_show_url
    assert_response :success
  end

  test "should get update" do
    get v1_want_todos_update_url
    assert_response :success
  end

  test "should get create" do
    get v1_want_todos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get v1_want_todos_destroy_url
    assert_response :success
  end

end
