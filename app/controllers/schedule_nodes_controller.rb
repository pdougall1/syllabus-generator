class ScheduleNodesController < ApplicationController

  def index
    @schedule_node = ScheduleNode.where(id: params[:ids]).order(date: :asc)
    render json: @schedule_node, each_serializer: ScheduleNodeSerializer
  end

  def show
    @schedule_node = ScheduleNode.find(params[:id])
    render json: @schedule_node
  end

  def create
    @schedule_node = ScheduleNode.create(schedule_node_params)
    render json: @schedule_node
  end

  def update
    @schedule_node = ScheduleNode.find(params[:id]).update_attributes(schedule_node_params)
    render json: @schedule_node
  end

  private

  def schedule_node_params
    schedule_node_params = [:syllabus_id, :schedule_id, :title, :created_at, :updated_at, :date, :syllabus_id]
    params.require(:schedule_node).permit(schedule_node_params)
  end
end
