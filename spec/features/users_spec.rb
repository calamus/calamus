require 'spec_helper'

feature 'the signin process' do
  background do
    User.create(email: 'user@example.com', password: 'foobar')
  end

  scenario 'signing in with correct credentials' do
    visit '/sessions/new'
    within("#session") do
      fill_in 'Login', with: 'user@example.com'
      fill_in 'Password', with: 'foobar'
    end
    click_link 'Sign in'
    expect(page).to have_content 'Success'
  end
end
