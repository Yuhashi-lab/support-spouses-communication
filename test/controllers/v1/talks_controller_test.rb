require 'test_helper'

class V1::TalksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get v1_talks_show_url
    assert_response :success
  end

  test "should get create" do
    get v1_talks_create_url
    assert_response :success
  end

end
