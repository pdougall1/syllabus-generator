class ScheduleNode < ActiveRecord::Base
  belongs_to :syllabus
  belongs_to :schedule
  has_many :items
end
