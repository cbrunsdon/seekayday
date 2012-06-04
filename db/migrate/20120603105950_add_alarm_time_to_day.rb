class AddAlarmTimeToDay < ActiveRecord::Migration
  def change
    add_column :days, :alarm_time, :datetime
  end
end
