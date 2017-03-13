# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Organization.create(
name: "St. John's Church",
location: "222 Bathurst st.",
description: "Pretty much like every other church",
image_url: "http://glendalecitychurch.org/wp-content/uploads/2015/01/temp-citychurch-outside.jpg",
)

Organization.create(
name: "Neat Space Camp",
location: "777 Yonge St.",
description: "Our organization introduces young children to a galaxy of fun",
image_url:"http://glendalecitychurch.org/wp-content/uploads/2015/01/temp-citychurch-outside.jpg",
)

Organization.create(
name: "Humane Society",
location: "111 King St.",
description: "Promotes humane care and protection of all animals",
image_url:"http://glendalecitychurch.org/wp-content/uploads/2015/01/temp-citychurch-outside.jpg",
)
