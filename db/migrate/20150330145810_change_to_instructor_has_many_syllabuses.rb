class ChangeToInstructorHasManySyllabuses < ActiveRecord::Migration
  def change
    remove_column :instructors, :syllabus_id
    add_column :syllabuses, :instructor_id, :integer
  end
end
