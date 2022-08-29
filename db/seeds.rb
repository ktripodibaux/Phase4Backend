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

post1 = Post.create(title: "how to make a post", content: "this is an example of creating a post", User: user1)

post2 = Post.create(title: "different post", content: "this is an example of creating a post", User: user1)

Post.create(title: "different post number 3", content: "this is an example of creating a post", User: user1)

Comment.create(content: "this post sucks", User: user1, Post: post1)

Comment.create(content: "I like this !", User: user1, Post: post1)