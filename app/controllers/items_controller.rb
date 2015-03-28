class ItemsController < ApplicationController

  def index
    @items = Item.where(id: params[:ids])
    render json: @items, each_serializer: ItemSerializer
  end

  def create
    @item = Item.create(item_params)
    render json: @item
  end

  private

  def item_params
    param_names = [:name, :content, :schedule_node_id, :created_at, :updated_at]
    params.require(:item).permit(param_names)
  end
end
