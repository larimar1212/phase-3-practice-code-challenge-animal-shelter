require "faker"

puts "seeding data"
Adopter.destroy_all
Pet.destroy_all
Shelter.destroy_all 

  5.times do |i|
  Adopter.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name)
end 

5.times do |i|
Shelter.create!(
    name: Faker::Name.name,
    address: Faker::Address.street_name
)
end 

  5.times do |i|
  Pet.create!(
    name: Faker::Name.name, 
    age: rand(1..3),
    species: Faker::Creature::Animal.name,
    adopted?: Faker::Boolean.boolean,
     shelter_id: Shelter.all.sample.id,
     adopter_id: Adopter.all.sample.id)
  end 

  puts "finished seeding"