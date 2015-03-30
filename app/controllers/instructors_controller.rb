class InstructorsController < ApplicationController

  def show
    @instructor = Instructor.find(params[:id])
    render json: @instructor
  end

  # def create
  #   create_params = { 
  #     first_name: instructor_params[:first_name],
  #     last_name: instructor_params[:last_name]
  #   }

  #   @instructor = Instructor.find_or_create_by(create_params) do |instructor|
  #     instructor.update_attributes(instructor_params)
  #   end
  #   if syllabus = Syllabus.find(syllabus_id)
  #     SyllabusInstructor.first_or_create(syllabus: syllabus, instructor: @instructor)
  #   end
  #   render json: @instructor
  # end

  # def update
  #   binding.pry
  #   @instructor = Instructor.find(params[:id]).update_attributes(instructor_params)
  #   render json: @instructor
  # end

  private

  def instructor_params_full
    param_names = [:first_name, :last_name, :syllabus_id, :created_at, :updated_at]
    params.require(:instructor).permit(param_names)
  end

  def syllabus_id
    instructor_params_full[:syllabus_id]
  end

  def instructor_params
    instructor_params_full.except(:syllabus_id)
  end
end
