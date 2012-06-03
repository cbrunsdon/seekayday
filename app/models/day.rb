class Day < ActiveRecord::Base
  attr_accessible :mood_id, :day, :activity_id, :health_level_id, :mood, :activity, :health_level

  belongs_to :mood
  belongs_to :activity
  belongs_to :health_level

  validates_presence_of :mood, :activity, :health_level

  def self.generate(date=Time.current.to_date)
    moods = Mood.all
    activities = Activity.all
    health_levels = HealthLevel.all

    Day.create! :day => date,
      :mood => moods[rand(moods.count)],
      :activity => activities[rand(activities.count)],
      :health_level => health_levels[rand(health_levels.count)]
  end
end
