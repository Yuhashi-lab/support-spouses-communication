require 'test_helper'

class V1::ChildrenControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get v1_children_create_url
    assert_response :success
  end

end
