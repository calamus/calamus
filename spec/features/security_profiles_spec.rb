require 'spec_helper'

feature 'the signin process' do
  background do
    SecurityProfile.create(email: 'user@example.com', password: 'foobar')
  end

  scenario 'signing in with correct credentials' do
    visit '/login'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'foobar'
    click_button 'Sign in'
    expect(page).to have_content 'Success'
  end
end
