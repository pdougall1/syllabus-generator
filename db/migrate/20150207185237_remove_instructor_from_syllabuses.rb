class RemoveInstructorFromSyllabuses < ActiveRecord::Migration
  def up
    remove_column :syllabuses, :instructor
  end

  def down
    add_column :syllabuses, :instructor, :string
  end
end
