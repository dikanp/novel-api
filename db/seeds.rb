# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author_a = Author.create!(name: 'JK. Rowling')
author_b = Author.create!(name: 'Hiro Mashima')
author_c = Author.create!(name: 'Tuti')

genre_a = Genre.create!(name: 'Fantasy')
genre_b = Genre.create!(name: 'Fiction')
genre_c = Genre.create!(name: 'Drama')

novel_a = Novel.create!(title: 'Harry Potret', author: author_a, genre: genre_a)
novel_b = Novel.create!(title: 'Rave', author: author_b, genre: genre_b)
novel_c = Novel.create!(title: 'Ha', author: author_c, genre: genre_c)