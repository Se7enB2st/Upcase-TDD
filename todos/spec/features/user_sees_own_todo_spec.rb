require 'rails_helper'

feature "User sees own todos" do
  scenario "doesn't see other's todos" do
    Todo.create!(title: "Get a haircut", email: "someone@example.com")

    sign_in_as "testing@example.com"

    expect(page).not_to have_css ".todos li", text: "Get a haircut"
  end
end
