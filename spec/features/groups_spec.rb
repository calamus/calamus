require 'spec_helper'

feature "group details" do
  scenario "when not logged in redirect to login page" do
    visit group_path
    expect(current_path).to eq '/login'
  end

  scenario "display details on a single group" do
    pending
  end
end
