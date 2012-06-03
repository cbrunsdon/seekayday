class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.date :day
      t.integer :health_level_id
      t.integer :activity_id
      t.integer :mood_id

      t.timestamps
    end
  end
end
