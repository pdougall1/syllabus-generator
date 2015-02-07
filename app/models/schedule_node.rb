class ScheduleNode < ActiveRecord::Base
  belongs_to :schedule
  has_many :items
end
