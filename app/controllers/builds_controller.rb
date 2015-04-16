class BuildsController < ApplicationController

  def show
    syllabus = Syllabus.find(params[:id])
    ScheduleBuilder.build with: syllabus
    render json: { syllabus_id: syllabus.id, schedule_id: syllabus.schedule.id }
  end
end
