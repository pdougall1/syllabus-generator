class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :syllabus_id

      t.timestamps
    end
  end
end
