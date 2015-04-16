class Schedule < ActiveRecord::Base
  belongs_to :syllabus
  has_many :schedule_nodes

  def has_schedule_nodes?
    schedule_nodes.count > 0
  end
end
