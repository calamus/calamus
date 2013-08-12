require 'spec_helper'

feature "group details forces login" do
  scenario "when not logged in redirect to login page" do
    visit group_path
    expect(current_path).to eq '/login'
  end
end

feature "group details view" do
  let(:user) { create(:security_profile) }
  let(:membership) { create(:membership, participant_id: user.participant.id) }

  background do
    sign_in user
    membership
    # user.participant.memberships = [membership]
    visit group_path
  end

  scenario "display details on a single group" do
    expect(current_path).to eq group_path
    expect(page).to have_content membership.group.name
  end
end
