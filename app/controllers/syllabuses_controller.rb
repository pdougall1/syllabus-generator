class SyllabusesController < ApplicationController

  def index
    @syllabuses = Syllabus.all
    render json: @syllabuses, each_serializer: SyllabusSerializer
  end

  def show
    @syllabus = Syllabus.find(params[:id])
    render json: @syllabus
  end

  def create
    @syllabus = Syllabus.create(syllabus_params)
    instructors_params.each do |instructor|
      instructor = Instructor.create(instructor)
      SyllabusInstructor.create(instructor: instructor, syllabus: @syllabus)
    end
    @syllabus.create_schedule_nodes
    render json: @syllabus
  end

  def update
    @syllabus = Syllabus.find(params[:id]).update_attributes(syllabus_params)
    instructors_params.each do |instructor_params|
      instructor = Instructor.find(instructor_params.delete(:id))
      instructor.update_attributes(instructor_params)
    end
    schedule_node_params.each do |node_params|
      node = ScheduleNode.find(node_params.delete(:id))
      node.update_attributes(node_params)
    end
    render json: @syllabus
  end

  private

  def syllabus_params
    param_keys = [:subject, :created_at, :updated_at,
      :start_date, :end_date, :monday, :tuesday, :wednesday, :thursday, 
      :friday, :saturday, :sunday]
    params.require(:syllabus).permit(param_keys)
  end

  def instructors_params
    param_keys = [:first_name, :last_name, :created_at, :updated_at, :id]
    params.require(:syllabus).permit(:instructors => param_keys)[:instructors]
  end

  def schedule_node_params
    param_keys = [:id, :title, :created_at, :updated_at, :date,
                  :schedule_id, :syllabus_id]
    params.require(:syllabus).permit(:schedule_nodes => param_keys)[:schedule_nodes]
  end

end
