# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
    User.create([ {name: "Karina", email: "karina@gmail.com", password: "123456", is_owner: "true"}])
#   Character.create(name: "Luke", movie: movies.first)
