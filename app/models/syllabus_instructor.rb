class SyllabusInstructor < ActiveRecord::Base
  belongs_to :syllabus
  belongs_to :instructor
end
