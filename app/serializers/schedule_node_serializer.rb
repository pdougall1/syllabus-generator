class ScheduleNodeSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :created_at, :updated_at, :items, :syllabus_id

  def schedule_id
    object.schedule.id if object.schedule
  end

  def syllabus_id
    object.syllabus.id if object.syllabus
  end

  def items
    object.items
  end
end
