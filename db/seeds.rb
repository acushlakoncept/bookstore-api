# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: 'Actions')
Category.create(name: 'Biography')
Category.create(name: 'History')
Category.create(name: 'Horror')
Category.create(name: 'Kids')
Category.create(name: 'Learning')
Category.create(name: 'Sci-Fi')

Book.create(title: 'The Adventures of Huckleberry Finn', author: 'Mark Twain', category_id: 1)
Book.create(title: 'Heart of Darkness', author: 'Joseph Conrad', category_id: 4)
Book.create(title: 'Harry Potter and the Sorcerers Stone', author: 'J.K. Rowling', category_id: 4)