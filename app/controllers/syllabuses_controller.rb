class SyllabusesController < ApplicationController

  def show
    @syllabus = Syllabus.find(params[:id])
    render json: @syllabus
  end

  def create
    @syllabus = Syllabus.create(syllabus_params)
    @syllabus.create_schedule
    @syllabus.create_schedule_nodes
    render json: @syllabus
  end

  def update
    @syllabus = Syllabus.find(params[:id]).update_attributes(syllabus_params)
    render json: @syllabus
  end

  private

  def syllabus_params
    param_keys = [:subject, :created_at, :updated_at,
      :start_date, :end_date, :monday, :tuesday, :wednesday, :thursday, 
      :friday, :saturday, :sunday
    ]
    params.require(:syllabus).permit(param_keys)
  end

end
