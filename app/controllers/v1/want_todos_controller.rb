class V1::WantTodosController < ApplicationController
  before_action :is_your_family?

  def index
    @want_todos = WantTodo.where(family_id: params[:family_id])
    render json: @want_todos
  end

  def show
    @want_todo = WantTodo.find(params[:id])
    render json: @want_todo
  end

  def create
    @want_todo = current_user.want_todos.new(want_todo_params)
    if @want_todo.save
      render json: { success: ('created') }
    else
      render json: { error: ('failed') }
    end
  end

  def update
    want_todo = WantTodo.find(params[:id])
    if want_todo.update(want_todo_params)
      render json: { success: ('updated') }
    else
      render json: { error: ('failed') }
    end
  end

  def destroy
    want_todo = WantTodo.find_by_id(params[:id])
    if want_todo.try(:destroy)
      render json: { success: ('deleted') }
    else
      render json: { error: ('failed') }
    end
  end

  private
    def is_your_family?
      unless current_user.family_id == params[:family_id].to_i
        render json: { error: ('family_id is not your family') }, status: :unprocessable_entity
      end
    end

    def want_todo_params
      params.permit(:deadline, :statement, :personnel, :family_id,)
    end

end
