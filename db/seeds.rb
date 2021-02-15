# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = H.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'Jenny');
User.create(name: 'Pao');

p User.all.count
Habit.create(user_id: User.first.id, name: 'Habit1', time: 30);
Group.create(name: '', user_id: User.first.id)
GroupHabit.create(habit_id: Habit.first.id, group_id: Group.first.id)
RepeatDay.create(day: 'Monday', habit_id: Habit.first.id, user_id: User.first.id)

Habit.create(user_id: User.first.id, name: 'Habit2', time: 30);
Group.create(name: 'Group1', user_id: User.first.id)
GroupHabit.create(habit_id: Habit.second.id, group_id: Group.second.id)
RepeatDay.create(day: 'Friday', habit_id: Habit.second.id, user_id: User.first.id)