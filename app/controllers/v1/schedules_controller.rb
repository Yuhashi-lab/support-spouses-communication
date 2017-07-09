class V1::SchedulesController < ApplicationController
  before_action :is_your_family?

  def index
    @schedules = Schedule.where(family_id: params[:family_id])
    render json: @schedules
  end

  def search_from_range
    @schedules = Schedule.where(family_id: params[:family_id], datetime: params[:start_time]..params[:end_time])
    render json: @schedules
  end

  def show
    @schedule = Schedule.find(params[:id])
    render json: @schedule
  end

  def create
    @schedule = current_user.schedules.new(schedule_params)
    if @schedule.save
      render json: { success: ('created') }
    else
      render json: { error: ('failed') }
    end
  end

  def update
    schedule = Schedule.find(params[:id])
    if schedule.update(schedule_params)
      render json: { success: ('updated') }
    else
      render json: { error: ('failed') }
    end
  end

  def destroy
    schedule = Schedule.find_by_id(params[:id])
    if schedule.try(:destroy)
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

    def schedule_params
      params.permit(:datetime, :statement, :family_id,)
    end

end
