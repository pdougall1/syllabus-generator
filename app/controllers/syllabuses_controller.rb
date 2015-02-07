class SyllabusesController < ApplicationController

  def new
    @syllabus = Syllabus.new
    @syllabus.instructor = Instructor.new
  end
end
