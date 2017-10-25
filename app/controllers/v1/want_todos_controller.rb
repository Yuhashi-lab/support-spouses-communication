class V1::WantTodosController < ApplicationController
  before_action :is_your_family?
  include Common

  def index
    h = WantTodo.where(family_id: params[:family_id], user_type: "Hasband").joins(:hasband).select(:id, :deadline, :statement, :family_id, :user_id, :user_type, :created_at, :updated_at, :name)
    w = WantTodo.where(family_id: params[:family_id], user_type: "Wife").joins(:wife).select(:id, :deadline, :statement, :family_id, :user_id, :user_type, :created_at, :updated_at, :name)
    render json: h + w.sort_by{|elem| elem.created_at}
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
    want_todo = WantTodo.find(params[:want_todo_id])
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
      params.permit(:deadline, :statement, :family_id,)
    end

end
