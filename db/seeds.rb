# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Organization.create(
name: "St. John's church",
location: "222 Bathurst st.",
description: "Church",
volunteer_position: "Short Term (3 months or less)"
)

Organization.create(
name: "Women's Shelter Toronto",
location: "777 Yonge St.",
description: "Womens Shelter",
volunteer_position: "Short Term (3 months or less)"
)

Organization.create(
name: "Toronto Homeless Shelter",
location: "111 King St.",
description: "Shelter",
volunteer_position: "Long Term (More than 3 months)"
)

Organization.create(
name: "Second Chance Rescue",
location: "333 Queen St.",
description: "Dog Shelter",
volunteer_position: "Event Committee"

)

Organization.create(
name: "Make A Wish",
location: "444 Front St.",
description: "Children's Charity",
volunteer_position: "Board"
)

Organization.create(
name: "Plant a Tree ",
location: "961 Planters lane",
description: "Tree Planting",
volunteer_position: "High SChool Community Service"
)
