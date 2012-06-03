class CreateHealthLevels < ActiveRecord::Migration
  def change
    create_table :health_levels do |t|
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
