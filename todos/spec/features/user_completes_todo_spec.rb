require 'rails_helper'

feature "User completes todo" do
  scenario "successfully" do
    sign_in

    create_todo("Working Out")

    click_on "Complete!"

    expect(page).to display_completed_todo "Working Out"
  end
end
