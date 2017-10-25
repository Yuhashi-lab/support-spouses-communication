class V1::TalksController < ApplicationController
  before_action :is_your_family?
  include Common

  def index
    h = Talk.where(family_id: params[:family_id], user_type: "Hasband").joins(:hasband).select(:id, :family_id, :user_id, :user_type, :name, :statement, :created_at, :updated_at)
    w = Talk.where(family_id: params[:family_id], user_type: "Wife").joins(:wife).select(:id, :family_id, :user_id, :user_type, :name, :statement, :created_at, :updated_at)
    render json: h+w.sort_by{|elem| elem.created_at}
  end

  def search_from_range
    h = Talk.where(family_id: params[:family_id], created_at: params[:start_time]..params[:end_time], user_type: "Hasband").joins(:hasband).select(:id, :family_id, :user_id, :user_type, :name, :statement, :created_at, :updated_at)
    w = Talk.where(family_id: params[:family_id], created_at: params[:start_time]..params[:end_time], user_type: "Wife").joins(:wife).select(:id, :family_id, :user_id, :user_type, :name, :statement, :created_at, :updated_at)
    talks = h+w
    render json: talks.sort_by{|elem| elem.created_at}
  end

  def create
    @talk = current_user.talks.new(talk_params)
    if @talk.save
      render json: { success: 'created' }
    else
      render json: { error: 'failed' }
    end
  end

  private

  def is_your_family?
    unless current_user.family_id == params[:family_id].to_i
      render json: { error: 'family_id is not your family' }, status: :unprocessable_entity
    end
  end

  def talk_params
    params.permit(:family_id, :statement)
  end
end
