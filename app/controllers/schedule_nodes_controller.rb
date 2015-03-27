class ScheduleNodesController < ApplicationController

  def index
    @schedule_node = ScheduleNode.where(id: params[:ids]).order(date: :asc)
    render json: @schedule_node, each_serializer: ScheduleNodeSerializer
  end
end
