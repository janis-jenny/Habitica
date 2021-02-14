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
Habit.create(user_id: User.first, name: 'Working', time: 30);
Group.create(name: '', user_id: User.first)
GroupHabit.create(habit_id: Habit.first, group_id: Group.first)
RepeatDay.create(day: 'Monday', habit_id: Habit.first, user_id: User.first)