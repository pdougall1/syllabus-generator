class CreateSyllabuses < ActiveRecord::Migration
  def change
    create_table :syllabuses do |t|
      t.string :subject
      t.string :instructor

      t.timestamps
    end
  end
end
