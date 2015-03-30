class SyllabusSerializer < ActiveModel::Serializer
  attributes :id, :subject, :created_at, :updated_at, 
             :start_date, :end_date, :monday, 
             :tuesday, :wednesday, :thursday, :friday, 
             :saturday, :sunday, :schedule, :schedule_nodes,
             :instructors

  def schedule
    object.schedule if object.schedule
  end

  def schedule_nodes
    object.schedule_nodes
  end

  def instructors
    object.instructors
  end
end
