class V1::QuestionAnswersController < ApplicationController
  include Common

  def index
    user_type  = request.headers['UserType']
    if user_type == "hasband"
      @answers = QuestionAnswer.where(user_id: current_user.family.wife.id, user_type: "Wife")
    else
      @answers = QuestionAnswer.where(user_id: current_user.family.hasband.id, user_type: "Hasband")
    end
    render json: @answers
  end

  def my_answers
    user_type  = request.headers['UserType']
    if user_type == "hasband"
      @answers = QuestionAnswer.where(user_id: current_user.id, user_type: "Hasband")
    else
      @answers = QuestionAnswer.where(user_id: current_user.id, user_type: "Wife")
    end
    render json: @answers
  end

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
