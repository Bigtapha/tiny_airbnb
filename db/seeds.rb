require 'faker'


TinyHouse.destroy_all
User.destroy_all

 7.times do
  user = User.new(
    name: Faker::Name.name,
    telephon: Faker::PhoneNumber.phone_number,
    description: Faker::Lorem.sentence(word_count: 10, supplemental: true),
    email: Faker::Internet.email,
    password: Faker::Name.initials(number: 6)

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
  tiny.remote_photo_url = 'https://66.media.tumblr.com/7686e94492aab4d360edd71ac13b2edf/babc445b10eae5f8-69/s1280x1920/8d4d70327e7b4811e91c61203947fc5aba210ff1.jpg'
  tiny.save!
end



