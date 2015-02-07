class SyllabusesController < ApplicationController

  def new
    @syllabus = Syllabus.new
  end
end
