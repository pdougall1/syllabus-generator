class UseDatetimeInsteadOfDate < ActiveRecord::Migration
  def change
    change_column :syllabuses, :start_date, :datetime
    change_column :syllabuses, :end_date, :datetime
    change_column :schedule_nodes, :date, :datetime
  end
end
