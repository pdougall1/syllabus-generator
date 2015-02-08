class Schedule < ActiveRecord::Base
  belongs_to :syllabus
  has_many :schedule_nodes

  WEEK_DAYS_MAP = {
    0 => 'monday',
    1 => 'tuesday',
    2 => 'wednesday',
    3 => 'thursday',
    4 => 'friday',
    5 => 'saturday',
    6 => 'sunday'
  }

  def week_days_map
    WEEK_DAYS_MAP
  end

  def create_schedule_nodes
    (syllabus.start_date..syllabus.end_date).each do |date|
      if syllabus.send(week_days_map[date.wday])
        self.schedule_nodes.create(date: date)
      end
    end
  end
end
