class V1::MustTodosController < ApplicationController
  before_action :is_your_family?
  include Common

  def index
    h = MustTodo.where(family_id: params[:id], user_type: "Hasband").joins(:hasband).select(:id, :deadline, :statement, :family_id, :user_id, :user_type, :created_at, :updated_at, :name)
    w = MustTodo.where(family_id: params[:id], user_type: "Wife").joins(:wife).select(:id, :deadline, :statement, :family_id, :user_id, :user_type, :created_at, :updated_at, :name)
    render json: h + w.sort_by{|elem| elem.created_at}
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
    must_todo = MustTodo.find(params[:must_todo_id])
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
      params.permit(:deadline, :statement, :family_id,)
    end

end
