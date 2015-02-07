class Schedule < ActiveRecord::Base
  belongs_to :syllabus
  has_many :schedule_nodes
end
