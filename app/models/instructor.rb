class Instructor < ActiveRecord::Base
  has_many :syllabuses, through: :syllabus_instructors
  has_many :syllabus_instructors
end
