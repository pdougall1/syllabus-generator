class SchedulesController < ApplicationController

  def new
    if syllabus = Syllabus.find(params[:syllabus_id])
      @schedule = syllabus.create_schedule
      @schedule.create_schedule_nodes
      render json: @schedule
    else
      # TODO: give "must add schedule to syllabus" error
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
    render json: @schedule
  end
end
