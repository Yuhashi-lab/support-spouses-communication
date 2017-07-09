class V1::QuestionAnswersController < ApplicationController
  def create
    if request.headers["UserType"] == "hasband"
      user = Hasband.find_by(id: request.headers["Authorization"].split(':').first)
    else
      user = Wife.find_by(id: request.headers["Authorization"].split(':').first)
    end
    user.question_answers.create(question_answer_params)
    render json: { success: ('created') }
  end

  def question_answer_params
    params.permit(:question_id, :answer)
  end

end
