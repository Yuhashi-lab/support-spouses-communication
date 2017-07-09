require 'test_helper'

class V1::QuestionAnswersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get v1_question_answers_create_url
    assert_response :success
  end

end
