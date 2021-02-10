require 'rails_helper'

RSpec.describe 'Habit', type: :feature do
  before :each do
    User.delete_all
    User.create(name: 'Jenny')
    visit '/login'
    fill_in 'name', with: 'Jenny'
    find("input[type='submit']").click
  end
  
  it "when clicks on habits path finds a link to create one" do
    user= User.last
    visit "/users/#{user.id}"
    expect(page).to have_link("Habits")
    click_link 'Habits'
    visit habits_path
    expect(page).to have_text("Welcome Jenny!")
  end
end