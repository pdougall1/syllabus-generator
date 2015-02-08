class AddDateToScheduleNodes < ActiveRecord::Migration
  def change
    add_column :schedule_nodes, :date, :date
  end
end
