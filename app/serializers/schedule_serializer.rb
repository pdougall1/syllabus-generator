class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :syllabus_id, :schedule_node_ids, :created_at, 
             :updated_at

  def syllabus_id
    object.syllabus.id
  end

  def schedule_node_ids
    object.schedule_nodes.pluck(:id)
  end

end
