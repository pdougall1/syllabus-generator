class CreateScheduleNodes < ActiveRecord::Migration
  def change
    create_table :schedule_nodes do |t|
      t.integer :schedule_id
      t.string :title

      t.timestamps
    end
  end
end
