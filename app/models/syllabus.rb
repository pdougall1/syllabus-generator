class Syllabus < ActiveRecord::Base

  DAYS_OF_THE_WEEK = ['sunday', 'monday', 'tuesday', 'wednesday', 'thursday','friday', 'saturday']

  has_one :schedule
  has_one :instructor
  has_many :schedule_nodes

  def create_schedule_nodes
    DAYS_OF_THE_WEEK.each do |day|
      schedule_nodes.create(date: DateTime.parse(day))
    end
  end
end
