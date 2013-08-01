FactoryGirl.define do
  factory :group do
    status "Active"
    category "Public"
    sequence(:name) { |n| "group name #{n}" }
    sequence(:description) { |n| "group desc #{n}" }
  end
end
