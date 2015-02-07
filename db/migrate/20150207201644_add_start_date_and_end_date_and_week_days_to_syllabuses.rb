class AddStartDateAndEndDateAndWeekDaysToSyllabuses < ActiveRecord::Migration
  def change
    add_column :syllabuses, :start_date, :date
    add_column :syllabuses, :end_date, :date
    add_column :syllabuses, :week_days, :integer, array: true, default: []
  end
end
