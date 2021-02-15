# rubocop:disable Lint/UselessAssignment

require 'rails_helper'

describe 'Habit', type: :feature do
  before :each do
    User.delete_all
    User.create(name: 'Jenny')
    visit '/login'
    fill_in 'name', with: 'Jenny'
    find("input[type='submit']").click
  end

  it 'when clicks on habits path you find a welcome text' do
    user = User.last
    visit "/users/#{user.id}"
    expect(page).to have_link('Habits')
    click_link 'Habits'
    visit habits_path
    expect(page).to have_text('Welcome Jenny!')
  end

  it 'when clicks on habits path you find a welcome text' do
    user = User.last
    visit "/users/#{user.id}"
    expect(page).to have_link('Habits')
    click_link 'Habits'
    visit habits_path
    expect(page).not_to have_text('Welcome Pao!')
  end

  it 'when clicks on new habit path you find a Name text' do
    user = User.last
    visit habits_path
    click_on 'New Habit'
    visit '/habits/new'
    expect(page).to have_text('Name:')
  end

  it 'when clicks on new habit path you find a Name text' do
    user = User.last
    visit habits_path
    click_on 'New Habit'
    visit '/habits/new'
    expect(page).not_to have_text('Nothing:')
  end

  it 'when clicks on habits path you find a welcome text' do
    user = User.last
    visit "/users/#{user.id}"
    click_on 'Group'
    visit '/groups'
    click_on 'New Group'
    visit '/groups/new'
    fill_in 'Name:', with: 'Entertainment'
    find("input[type='submit']").click
    group = Group.last
    visit "/groups/#{group.id}"
    expect(page).to have_text('Group: Entertainment')
  end

  it 'when clicks on habits path you find a welcome text' do
    user = User.last
    visit "/users/#{user.id}"
    click_on 'Group'
    visit '/groups'
    click_on 'New Group'
    visit '/groups/new'
    fill_in 'Name:', with: 'Entertainment'
    find("input[type='submit']").click
    group = Group.last
    visit "/groups/#{group.id}"
    expect(page).not_to have_text('Group: Self Care')
  end
end

RSpec.describe Habit, type: :model do
  describe 'associations' do
    it { should have_many(:group_habits) }
  end
  describe 'associations' do
    it { should belong_to(:user) }
  end
end

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:habits) }
  end
  describe 'associations' do
    it { should have_many(:groups) }
  end
end

RSpec.describe Group, type: :model do
  describe 'associations' do
    it { should have_many(:group_habits) }
  end
  describe 'associations' do
    it { should have_many(:habits) }
  end
  describe 'associations' do
    it { should belong_to(:user) }
  end
end
# rubocop:enable Lint/UselessAssignment
