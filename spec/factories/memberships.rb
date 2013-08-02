FactoryGirl.define do
  factory :membership do
    sequence(:group_id) { create(:group).id }
    sequence(:participant_id) { create(:participant).id }
  end
end
