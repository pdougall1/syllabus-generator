class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :schedule_node_id
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
