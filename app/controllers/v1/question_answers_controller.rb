class V1::QuestionAnswersController < ApplicationController
  include Cmmon

  def create
    @answer = current_user.question_answers.new(question_answer_params)
    if @answer.save
      render json: { success: ('created') }
    else
      render json: { error: ('failed') }
    end
  end

  def question_answer_params
    params.permit(:question_id, :answer)
  end

end
