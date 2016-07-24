require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    create_todo("Read Capybara")

    expect(page).to display_todo "Read Capybara"
  end
end
