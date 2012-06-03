FactoryGirl.define do
  factory :day do
    sequence(:day) { |x| DateTime.new(DateTime.current.year, DateTime.current.month, x) }
    association :health_level
    association :activity
    association :mood
  end
end
