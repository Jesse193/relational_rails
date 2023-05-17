# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
shop1 = Shop.create!(name: "North Pole Creamery", hours: "11:00 - 2000", open_year_round: true, established: 1980)
flavor_1 = shop1.flavors.create!(flavor: "Chocolate", nut_free: true, calories: 600)
shop2 = Shop.create!(name: "Scoops", hours: "12:00 - 21:00", open_year_round: false, established: 1990)
flavor_2 = shop2.flavors.create!(flavor: "Chocolate", nut_free: true, calories: 600)
flavor_3 = shop2.flavors.create!(flavor: "Vanilla", nut_free: true, calories: 580)

