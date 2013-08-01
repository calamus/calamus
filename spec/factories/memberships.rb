FactoryGirl.define do
  factory :membership do
    sequence(:group_id) { create(:group).id }
    sequence(:participant) { create(:participant).id }
  end
end
