class SchedulesController < ApplicationController

  def new
    if syllabus = Syllabus.find(params[:syllabus_id])
      @schedule = syllabus.build_schedule
    else
      # TODO: give must add schedule to syllabus error
    end
  end

  def create
    # TODO:
  end

  private

  def schedule_params
    # TODO:
    # require(:syllabus).permit(:week_days, :subject, :start_date, :end_date)
  end

end
