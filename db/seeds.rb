# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..30).each do |i| 
  User.create(name: "User#{i}", birthday: "dd/mm/yyyy", email: "user#{i}@example.com", 
  password: "foobar", password_confirmation: "foobar", role: 0)
end

(1..35).each do |i| 
  Team.create(name: "team#{i}", description: "this is rails app", id_leader: "#{i + 5}")
end