class Syllabus < ActiveRecord::Base
  has_one :schedule
  has_one :instructor

  WEEK_DAY_MAP = {
    1 => 'Monday',
    2 => 'Tuesday',
    3 => 'Wednesday',
    4 => 'Thursday',
    5 => 'Friday',
    6 => 'Saturday',
    7 => 'Sunday'
  }

  def self.week_day_map
    WEEK_DAY_MAP
  end

end
