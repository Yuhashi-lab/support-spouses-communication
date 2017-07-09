class V1::TalksController < ApplicationController
  before_action :is_your_family?

  def index
    @talks = Talk.where(family_id: params[:family_id])
    render json: @talks
  end

  def search_from_range
    @talks = Talk.where(family_id: params[:family_id], created_at: params[:start_time]..params[:end_time])
    render json: @talks
  end

  def create
    @talk = current_user.talks.new(talk_params)
    if @talk.save
      render json: { success: ('created') }
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

    def talk_params
      params.permit(:family_id, :statement)
    end
end
