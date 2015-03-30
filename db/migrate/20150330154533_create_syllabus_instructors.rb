class CreateSyllabusInstructors < ActiveRecord::Migration
  def change
    create_table :syllabus_instructors do |t|
      t.integer :syllabus_id
      t.integer :instructor_id

      t.timestamps
    end
  end
end
