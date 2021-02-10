require 'rails_helper'

describe 'Habit', type: :feature do
  before :each do
    User.delete_all
    User.create(name: 'Jenny')
    visit '/login'
    fill_in 'name', with: 'Jenny'
    find("input[type='submit']").click
  end
  
  it "when clicks on habits path you find a welcome text" do
    user= User.last
    visit "/users/#{user.id}"
    expect(page).to have_link("Habits")
    click_link 'Habits'
    visit habits_path
    expect(page).to have_text("Welcome Jenny!")
  end

  it "when clicks on new habit path you find a Name text" do
    user= User.last
    visit habits_path
    click_on 'New Habit'
    visit "/habits/new"
    expect(page).to have_text("Name:")
  end

  it "when clicks on habits path you find a welcome text" do
    user= User.last
    visit "/users/#{user.id}"
    click_on 'Group'
    visit "/groups"
    click_on 'New Group'
    visit "/groups/new"
    fill_in 'Name:', with: 'Entertainment'
    find("input[type='submit']").click
    group= Group.last
    visit "/groups/#{group.id}"
    expect(page).to have_text("Group: Entertainment")  
  end
end