(1..30).each do |i| 
  User.create(name: "User#{i}", birthday: "dd/mm/yyyy", email: "user#{i}@example.com", 
  password: "foobar", password_confirmation: "foobar", role: 0)
end

(1..35).each do |i| 
  Team.create(name: "team#{i}", description: "this is rails app", id_leader: "#{i + 5}")
end