class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :level
      t.integer :num_years

      t.timestamps
    end
    add_index :skills, :name, unique: true
  end
end
