class AddSyllabusIdToScheduleNodes < ActiveRecord::Migration
  def change
    add_column :schedule_nodes, :syllabus_id, :integer
  end
end
