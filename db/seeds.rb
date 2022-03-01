# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

demoUser = User.create!(full_name: 'DemoUser', email: 'demo@demo.com', password: 'demopassword')



story1 = Story.create!(
  title: 'Story Title',
  body: "This is the body of the story. Isn't it a very nice body. Check out"\
  " this great body wow. What a novel and interesting body. That's enough for"\
  " this incredible body. I will stop now. But there's just another line here"\
  " because it will be a much better body if this is here.",
  tags: ['cool', 'super cool'],
  author: 'Ian Farr',
  author_id: 1,
  created_at: DateTime.now
)

story2 = Story.create!(
  title: 'Second Story',
  body: "This is the body of the story. Isn't it a very nice body. Check out"\
  " this great body wow. What a novel and interesting body. That's enough for"\
  " this incredible body. I will stop now. But there's just another line here"\
  " because it will be a much better body if this is here.",
  tags: ['cool', 'super cool'],
  author: 'New Guy',
  author_id: 2,
  created_at: DateTime.now
)

story3 = Story.create!(
  title: 'Third Story',
  body: "This is the body of the story. Isn't it a very nice body. Check out"\
  " this great body wow. What a novel and interesting body. That's enough for"\
  " this incredible body. I will stop now. But there's just another line here"\
  " because it will be a much better body if this is here.",
  tags: ['cool', 'super cool'],
  author: 'New Girl',
  author_id: 3,
  created_at: DateTime.now
)

story4 = Story.create!(
  title: 'Fourth Story',
  body: "This is the body of the story. Isn't it a very nice body. Check out"\
  " this great body wow. What a novel and interesting body. That's enough for"\
  " this incredible body. I will stop now. But there's just another line here"\
  " because it will be a much better body if this is here.",
  tags: ['cool', 'super cool'],
  author: 'New Girl',
  author_id: 4,
  created_at: DateTime.now
)

story5 = Story.create!(
  title: 'Fifth Story',
  body: "This is the body of the story. Isn't it a very nice body. Check out"\
  " this great body wow. What a novel and interesting body. That's enough for"\
  " this incredible body. I will stop now. But there's just another line here"\
  " because it will be a much better body if this is here.",
  tags: ['cool', 'super cool'],
  author: 'New Girl',
  author_id: 5,
  created_at: DateTime.now
)



