require 'rails_helper'

feature "User completes todo" do
  scenario "successfully" do
    sign_in

    create_todo("Working Out")

    click_on "Complete!"

    expect(page).to have_css '.todos li.completed', text: 'Working Out'
  end
end
