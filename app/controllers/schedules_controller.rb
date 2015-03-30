class SchedulesController < ApplicationController

  def show
    @schedule = Schedule.find(params[:id])
    @schedule.create_schedule_nodes unless @schedule.has_schedule_nodes?
    render json: @schedule
  end

  def create
    @schedule = Schedule.create(schedule_params)
    render json: @schedule
  end

  private

  def schedule_params
    params.require(:schedule).permit(:syllabus_id, :created_at, :updated_at)
  end
end
