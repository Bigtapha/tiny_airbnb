TinyHouse.destroy_all
User.destroy_all

#  7.times do
#   user = User.new(
#     name: Faker::Name.name,
#     telephon: Faker::PhoneNumber.phone_number,
#     description: Faker::Lorem.sentence(word_count: 10, supplemental: true),
#     email: Faker::Internet.email,
#     password: Faker::Name.initials(number: 6)

#   )
#   user.save!
#   end

# 4.times do
#   tiny = TinyHouse.new(
#     owner: User.all.sample,
#     title: Faker::FunnyName.name,
#     location: Faker::Address.city,
#     description: Faker::Lorem.sentence(word_count: 10, supplemental: true),
#     travellers_number: rand(1..4),
#     price: rand(50..150),
#     bed_number: rand(1..4),
#     bedroom_number: rand(1..3),
#     wifi: ["true", "false"].sample,
#     kitchen: "true",
#     sauna: ["true", "false"].sample,
#     created_at: Faker::Date.between(from: 45.days.ago, to: Date.today),
#     updated_at: Faker::Date.between(from: 3.days.ago, to: Date.today)
#   )
#   tiny.remote_photo_url = 'https://66.media.tumblr.com/7686e94492aab4d360edd71ac13b2edf/babc445b10eae5f8-69/s1280x1920/8d4d70327e7b4811e91c61203947fc5aba210ff1.jpg'
#   tiny.save!
# end

user1 = User.create!(
  email: "matthieu@example.com",
  password: "azerty",
  name: "Matt",
  telephon: "123456789",
  description: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum"
  )

user2 = User.create!(
  email: "kevcha@example.com",
  password: "azerty",
  name: "KevCha",
  telephon: "123456789",
  description: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum"
  )

user3 = User.create!(
  email: "user3@example.com",
  password: "azerty",
  name: "Joseph",
  telephon: "123456789",
  description: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum"
  )

user4 = User.create!(
  email: "benjamin@example.com",
  password: "azerty",
  name: "Benjamin",
  telephon: "123456789",
  description: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum"
  )

blackcabin = TinyHouse.create!(
  owner: User.all.sample,
  title: "Black Cabin",
  location: "Le Village, Propiac",
  travellers_number: 4, description: "Nice little Black Cabin in Lorem Ipsum...",
  price: 45,
  bed_number: 2,
  bedroom_number: 1,
  wifi: "true",
  kitchen: "true",
  sauna: "false",
  photo: Rails.root.join("app/assets/images/black-cabin.jpg").open
  )

firecabin = TinyHouse.create!(
  owner: User.all.sample,
  title: "Fire Cabin",
  location: "54 Chemin du Marché, Autrans",
  travellers_number: 4, description: "Cosy cabin in the mountain in Lorem Ipsum...",
  price: 35,
  bed_number: 4,
  bedroom_number: 1,
  wifi: "true",
  kitchen: "true",
  sauna: "false",
  photo: Rails.root.join("app/assets/images/fire-cabin.jpg").open
  )

lakecabin = TinyHouse.create!(
  owner: User.all.sample,
  title: "Lake Cabin",
  location: "Avenue de Coudrée, Sciez-sur-Léman",
  travellers_number: 4, description: "Cabin on a beautiful lake in Lorem Ipsum...",
  price: 55,
  bed_number: 1,
  bedroom_number: 1,
  wifi: "true",
  kitchen: "true",
  sauna: "false",
  photo: Rails.root.join("app/assets/images/lake-cabin.jpg").open
  )

opencabin = TinyHouse.create!(
  owner: User.all.sample,
  title: "Open Cabin",
  location: "173 Avenue du Petit Port, Aix-les-Bains",
  travellers_number: 4, description: "Innovative Cabin open/closed in Lorem Ipsum...",
  price: 75,
  bed_number: 4,
  bedroom_number: 2,
  wifi: "true",
  kitchen: "true",
  sauna: "false",
  photo: Rails.root.join("app/assets/images/open-cabin.jpg").open
  )

sunsetcabin = TinyHouse.create!(
  owner: User.all.sample,
  title: "Sunset Cabin",
  location: "Route de la Gare, Lépin-le-Lac",
  travellers_number: 4, description: "The most wonderful sunset scene in the Cabin in Lorem Ipsum...",
  price: 65,
  bed_number: 1,
  bedroom_number: 1,
  wifi: "true",
  kitchen: "true",
  sauna: "true",
  photo: Rails.root.join("app/assets/images/sunset-cabin.jpg").open
  )

