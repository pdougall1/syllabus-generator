class Schedule < ActiveRecord::Base
  belongs_to :syllabus
  has_many :schedule_nodes

  def create_schedule_nodes
    (syllabus.start_date..syllabus.end_date).each do |date|
      # if syllabus.week_days.include? date.wday
      #   self.schedule_nodes.create
      # end
    end
  end
end
