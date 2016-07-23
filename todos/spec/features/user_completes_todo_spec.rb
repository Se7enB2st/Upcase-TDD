require 'rails_helper'

feature "User complete todo" do
  scenario "successfully" do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Working Out"
    click_on "Submit"

    click_on "Completed!"

    expect(page).to have_css '.todos li.completed', text: 'Working Out'
  end
end
