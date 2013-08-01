require 'spec_helper'

feature 'the signin process' do
  background do
    @user = FactoryGirl.create(:security_profile)
  end

  scenario 'signing in with correct credentials' do
    sign_in @user
    expect(page).to have_content 'Signed in successfully'
    expect(current_path).to eq group_path
  end
end
