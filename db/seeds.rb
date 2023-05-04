require 'faker'

# Create cities
100.times do
  City.create(city_name: Faker::Address.city)
end

# Create dogsitters
100.times do
  Dogsitter.create(
    name: Faker::Name.first_name, 
    city_id: rand(1..100)
  )
end

# Create dogs
100.times do
  Dog.create(
    name: Faker::Name.first_name, 
    city_id: rand(1..100)
  )
end

# Create strolls
100.times do
  Stroll.create(
    date: Faker::Time.between_dates(from: Date.today, to: Date.today + 30),
    dogsitter_id: rand(1..100)
  )
end

100.times do 
  dogs = Dog.order("RANDOM()").limit(rand(1..5))
  dogs.each do |dog|
    JoinStrollDog.create(
      stroll_id: rand(1..100), 
      dog: dog
      )
  end
end
