class AddMondayTuesdayWednesdayThursdayFridaySaturdaySundayToSyllabuses < ActiveRecord::Migration
  def change
    add_column :syllabuses, :monday, :boolean
    add_column :syllabuses, :tuesday, :boolean
    add_column :syllabuses, :wednesday, :boolean
    add_column :syllabuses, :thursday, :boolean
    add_column :syllabuses, :friday, :boolean
    add_column :syllabuses, :saturday, :boolean
    add_column :syllabuses, :sunday, :boolean
  end
end
