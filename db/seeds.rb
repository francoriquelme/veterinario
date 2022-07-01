# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
5.times do |i|
    Client.create(name: "Cliente #{i+1}", phone: 99886655+i, name: "Cliente #{i+1}", email: "emplo#{i+1}@gmail.com")
end