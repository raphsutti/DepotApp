# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
# . . .
Product.create!(title: 'Programming Ruby 1.9 & 2.0',
  description:
    %{<p>
      Ruby is the fastest growing and most exciting dynamic language
      out there. If you need to get working programs delivered fast,
      you should add Ruby to your toolbox.
    </p>},
  image_url: 'ruby.jpg',
  price: 49.95)

  Product.create!(title: 'Eloquent JavaScript 3rd Edition',
  description:
    %{<p>
    This is a book about JavaScript, programming, and the wonders of the digital. You can read it online here, or get your own paperback copy of the second edition. A paper third edition is being worked on, but it isn't clear yet when it'll be available.
    </p>},
  image_url: 'js.jpg',
  price: 39.95)
# . . .