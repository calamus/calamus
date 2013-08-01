FactoryGirl.define do
  factory :security_profile do
    sequence(:email) { |n| "user#{n}@example.com" }
    password "secret"
    participant
  end
end
