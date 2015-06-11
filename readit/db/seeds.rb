# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do |variable|

  user =  User.create(name: Faker::Name.name, email: Faker::Internet.email, password_digest: Faker::Lorem.word)

  board = Board.create(category: Faker::Lorem.word)

  link = Link.create(post: Faker::Lorem.paragraph, title: Faker::Lorem.word, user_id: user.id, board_id: board.id)

  comment = Comment.create(body: Faker::Lorem.words, link_id: link.id, user_id: user.id)

  vote = Vote.create(count: Faker::Number.number(2), user_id: user.id, link_id: link.id)

end
