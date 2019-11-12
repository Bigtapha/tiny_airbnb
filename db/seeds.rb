require 'faker'
TinyHouse.destroy_all
User.destroy_all

 7.times do
  user = User.new(
    name: Faker::Name.name,
    telephon: Faker::PhoneNumber.phone_number,
    description: Faker::Lorem.sentence(word_count: 10, supplemental: true),
    email: Faker::Internet.email,
    password: Faker::Beer.name

  )
  user.save!
  end

4.times do
  tiny = TinyHouse.new(
    owner: User.all.sample,
    title: Faker::FunnyName.name,
    location: Faker::Address.city,
    description: Faker::Lorem.sentence(word_count: 10, supplemental: true),
    travellers_number: rand(1..4),
    price: rand(50..150),
    bed_number: rand(1..4),
    bedroom_number: rand(1..3),
    wifi: ["true", "false"].sample,
    kitchen: "true",
    sauna: ["true", "false"].sample,
    created_at: Faker::Date.between(from: 45.days.ago, to: Date.today),
    updated_at: Faker::Date.between(from: 3.days.ago, to: Date.today)
  )
  tiny.save!
end



