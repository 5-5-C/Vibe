# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Organization.create([{name: 'Amena'}])
Organization.destroy_all
t.string   "name"
t.text     "description"
t.text     "location"
t.datetime "created_at",  null: false
t.datetime "updated_at",  null: false
t.integer  "user_id"
t.string   "imageURL"

25.times do
  p = Organization.create!(
    name: Faker::Company.name,
    location: Faker::Address.street_address,
    description: Faker::Lorem.sentence,
    user_id: rand(5)
    )
end

#
#
# Organization.create(
# name: "St. John's church",
# location: "222 Bathurst st.",
# description: "Church",
# imageURL:
# )
#
# Organization.create(
# name: "Women's Shelter Toronto",
# location: "777 Yonge St.",
# description: "Womens Shelter",
# imageURL:
# )
#
# Organization.create(
# name: "Toronto Homeless Shelter",
# location: "111 King St.",
# description: "Shelter",
# imageURL:
# )
#
# Organization.create(
# name: "Second Chance Rescue",
# location: "333 Queen St.",
# description: "Dog Shelter",
# imageURL:
# )
#
# Organization.create(
# name: "Make A Wish",
# location: "444 Front St.",
# description: "Children's Charity",
# imageURL:
# )
#
# Organization.create(
# name: "Plant a Tree ",
# location: "961 Planters lane",
# description: "Tree Planting",
# imageURL:
#
#
# Organization.create(
# name: "Angel Emergency Alert Organization",
# location: "111 Richmond St W #12, Toronto, ON M5H 2G4",
# description: "Google Cardboard Virtual Reality Volunteers",
# )
#
# Organization.create(
# name: "Belmont House",
# location: " 55 Belmont St, Toronto, ON M5R 1R1",
# description: "Recreation Helper for Senior Activities/Leisure Game",
# )
#
# Organization.create(
# name: "Luminato",
# location: "180 Shaw Street, Suite 301 Toronto, ON, M6J 2W5",
# description: "Youth Photography Program Participants",
# )
#
# Organization.create(
# name: "High Park Nature Centre",
# location: "375 Colborne Lodge Dr, Toronto, ON M6R 2Z3",
# description: "OURSpace Assistant",
# )
#
# Organization.create(
# name: "Miles Nadal JCC",
# location: "750 Spadina Ave, Toronto, ON M5S 2J2",
# description: "Floor Hockey Academy Assistant",
# )
