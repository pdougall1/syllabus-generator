class Syllabus < ActiveRecord::Base
  has_one :schedule
  has_one :instructor
end
