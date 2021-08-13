# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#   t.string :name
#   t.integer :age
#   t.text :mood
#   t.text :status

# first_post = Post.create(first_post)
# second_post = Post.create(second_post)
# third_post = Post.create(third_post)

first_post = Post.create(
    name: "Miguel",
    age: 20,
    mood: "Content",
    status: "Feeling relaxed at the moment"
)

first_post.comments.create(
    content: "Being relaxed is good"
)

second_post = Post.create(
    name: "John",
    age: 25,
    mood: "Excited",
    status: "Feeling excited at the moment"
)

second_post.comments.create(
    content: "Being excited is good"
)

third_post = Post.create(
    name: "Leo",
    age: 23,
    mood: "Nervous",
    status: "Feeling nervous at the moment"
)

third_post.comments.create(
    content: "Being nervous is not good"
)

first_post.save
second_post.save
third_post.save
