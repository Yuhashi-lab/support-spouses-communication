require 'test_helper'

class V1::CalendarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get v1_calendars_index_url
    assert_response :success
  end

  test "should get show" do
    get v1_calendars_show_url
    assert_response :success
  end

  test "should get create" do
    get v1_calendars_create_url
    assert_response :success
  end

  test "should get update" do
    get v1_calendars_update_url
    assert_response :success
  end

  test "should get destroy" do
    get v1_calendars_destroy_url
    assert_response :success
  end

end
