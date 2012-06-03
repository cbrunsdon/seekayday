class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :benefit_level

      t.timestamps
    end
  end
end
