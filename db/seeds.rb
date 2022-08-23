# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

Post.destroy_all


user1 = User.create(name:"Kurt", password: "password")

Post.create(title: "how to make a post", content: "this is an example of creating a post", User: user1)