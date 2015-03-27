class ScheduleNodeSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :created_at, :updated_at, :item_ids  

  def schedule_id
    object.schedule.id
  end

  def item_ids
    object.items.pluck(:id)
  end
end
