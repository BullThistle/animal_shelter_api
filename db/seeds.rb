# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
Dog.destroy_all

cats = []
dogs = []

50.times do
  cats.push(Cat.create!(
    name: Faker::Zelda.character,
    breed: Faker::Cat.breed,
    sex: if rand(2) == 1
      'Male'
    else
      'Female'
    end
  ))
  dogs.push(Dog.create!(
    name: Faker::Fallout.character,
    breed: Faker::Dog.breed,
    sex: if rand(2) == 1
      'Male'
    else
      'Female'
    end
  ))
end

puts "Seeded #{Cat.count} cats and #{Dog.count} dogs."