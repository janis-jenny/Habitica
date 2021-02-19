# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = H.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'Jenny', image: 'myavatar.jpg');
User.create(name: 'User1');

p User.all.count
Habit.create(user_id: User.first.id, name: 'Habit1', time: 30);
Group.create(name: '', user_id: User.first.id);
GroupHabit.create(habit_id: Habit.first.id, group_id: Group.first.id);
RepeatDay.create(day: 'Monday', habit_id: Habit.first.id, user_id: User.first.id);

Habit.create(user_id: User.first.id, name: 'Habit2', time: 30);
Group.create(name: 'Mindfulness', user_id: User.first.id, image: 'mindfulness.jpg');
GroupHabit.create(habit_id: Habit.second.id, group_id: Group.second.id)
RepeatDay.create(day: 'Friday', habit_id: Habit.second.id, user_id: User.first.id)

Habit.create(user_id: User.first.id, name: 'Habit3', time: 60);
Group.create(name: 'Connect', user_id: User.first.id, image: 'connect.jpg');
GroupHabit.create(habit_id: Habit.third.id, group_id: Group.third.id)
RepeatDay.create(day: 'Saturday', habit_id: Habit.third.id, user_id: User.first.id)

Habit.create(user_id: User.first.id, name: 'Habit4', time: 80);
Group.create(name: 'Entertainment', user_id: User.first.id, image: 'entertainment.jpg');
GroupHabit.create(habit_id: Habit.fourth.id, group_id: Group.fourth.id)
RepeatDay.create(day: 'Saturday', habit_id: Habit.fourth.id, user_id: User.first.id)

Habit.create(user_id: User.first.id, name: 'Habit5', time: 80);
Group.create(name: 'Self Care', user_id: User.first.id, image: 'myavatar.jpg');
GroupHabit.create(habit_id: Habit.fifth.id, group_id: Group.fifth.id)
RepeatDay.create(day: 'Saturday', habit_id: Habit.fifth.id, user_id: User.first.id)
