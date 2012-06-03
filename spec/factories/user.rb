FactoryGirl.define do
  factory :user do
    password               "password"
    password_confirmation  "password"
    sequence(:email) { |x|  "user_#{x}@example.com" }
  end
end
