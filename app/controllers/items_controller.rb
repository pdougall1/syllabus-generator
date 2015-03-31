class ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])
    render json: @item
  end

  def index
    @items = Item.where(id: params[:ids])
    render json: @items, each_serializer: ItemSerializer
  end

  def create
    @item = Item.create(item_params)
    render json: @item
  end

  def update
    @item = Item.find(params[:id]).update_attributes(item_params)
    render json: @item
  end

  def destroy
    @item = Item.find(params[:id]).destroy
    render nothing: true, status: :ok
  end

  private

  def item_params
    param_names = [:name, :content, :schedule_node_id, :created_at, :updated_at]
    params.require(:item).permit(param_names)
  end
end



