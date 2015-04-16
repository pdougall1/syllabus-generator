class SyllabusSerializer < ActiveModel::Serializer
  attributes :id, :subject, :created_at, :updated_at, 
             :start_date, :end_date, :monday, 
             :tuesday, :wednesday, :thursday, :friday, 
             :saturday, :sunday, :schedule, :schedule_node_ids,
             :instructors

  def schedule
    object.schedule if object.schedule
  end

  # def schedule_nodes
  #   object.schedule_nodes.map do |node|
  #     attrs = node.attributes
  #     attrs[:item_ids] = node.items.pluck(:id)
  #     attrs
  #   end
  # end

  def schedule_node_ids
    object.schedule_nodes.pluck(:id)
  end

  def instructors
    object.instructors
  end
end
