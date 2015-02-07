class SyllabusesController < ApplicationController

  def new
    @syllabus = Syllabus.new
    @syllabus.instructor = Instructor.new
  end

  def create
    @syllabus = Syllabus.create(syllabus_params)
    redirect_to new_schedule_path(syllabus_id: @syllabus.id)
  end

  private

  def syllabus_params
    params.require(:syllabus).permit!
  end

end
