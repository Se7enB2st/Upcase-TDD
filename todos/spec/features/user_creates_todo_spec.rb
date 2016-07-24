require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    create_todo("Read Capybara")

    expect(page).to have_css '.todos li', text: 'Read Capybara'
  end
end
