class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at, :name, :content, :schedule_node_id

  def schedule_node_id
    object.schedule_node.id
  end
end
