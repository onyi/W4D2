# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


COLORS = %w(red blue yellow black orange white pink)
SEXS = %w(M F)
5.times { Cat.new(birth_date: Faker::Date.between((1..50).to_a.sample.days.ago, Date.today), color: COLORS.sample, name: Faker::Creature::Cat.name, sex: SEXS.sample, description: Faker::Lorem.sentence(5)).save } 