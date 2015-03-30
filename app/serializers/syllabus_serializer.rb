class SyllabusSerializer < ActiveModel::Serializer
  attributes :id, :subject, :created_at, :updated_at, 
             :start_date, :end_date, :monday, 
             :tuesday, :wednesday, :thursday, :friday, 
             :saturday, :sunday, :schedule_id, :schedule_node_ids

  def schedule_id
    object.schedule.id if object.schedule
  end

  def schedule_node_ids
    object.schedule_nodes.pluck(:id)
  end

  def start_date
    object.start_date
  end
end

