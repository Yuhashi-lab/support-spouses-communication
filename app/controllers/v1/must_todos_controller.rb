class V1::MustTodosController < ApplicationController
  before_action :is_your_family?
  include Commonn

  def index
    @must_todos = MustTodo.where(family_id: params[:family_id])
    render json: @must_todos
  end

  def show
    @must_todo = MustTodo.find(params[:id])
    render json: @must_todo
  end

  def create
    @must_todo = current_user.must_todos.new(must_todo_params)
    if @must_todo.save
      render json: { success: ('created') }
    else
      render json: { error: ('failed') }
    end
  end

  def update
    must_todo = MustTodo.find(params[:id])
    if must_todo.update(must_todo_params)
      render json: { success: ('updated') }
    else
      render json: { error: ('failed') }
    end
  end

  def destroy
    must_todo = MustTodo.find_by_id(params[:id])
    if must_todo.try(:destroy)
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

    def must_todo_params
      params.permit(:deadline, :statement, :personnel, :family_id,)
    end

end
