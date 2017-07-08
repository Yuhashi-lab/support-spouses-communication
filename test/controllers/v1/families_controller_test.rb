require 'test_helper'

class V1::FamiliesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get v1_families_create_url
    assert_response :success
  end

end
