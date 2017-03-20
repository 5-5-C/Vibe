# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Organization.create(
name: "Second Harvest Toronto",
location: "1450 Lodestar Rd North York ON M3J 3C1",
description: "Second Harvest Toronto is a food rescue and redistribution charitable organization that strives to decrease hunger in the city of Toronto.",
image_url: "http://www.katiescucina.com/wp-content/uploads/2012/08/Second-Harvest-Logo-Big.jpg",
)

Organization.create(
name: "Canadian Cancer Society",
location: "760 Pacific Rd Oakville ON L6L 6M5",
description: "The Canadian Cancer Society is a national, community-based charitable organization of volunteers whose mission is to eradicate cancer and enhance the quality of life of those living with the disease.",
image_url: "http://www.cancer.ca/~/media/CCS/Design/Images/CCS_logo_TW.png",
)

Organization.create(
name: "Centre for Addiction and Mental Health",
location: "250 College Toronto ON M5T 1L8",
description: "The Centre for Addiction and Mental Health or in French the Centre de toxicomanie et de santé mentale is a mental health teaching hospital in with central facilities located in the Toronto community.",
image_url: "https://www.hwcdsb.ca/support/mentalhealth/51102--Centre-for-Addiction-and-Mental-Health?fileID=51830",
)

Organization.create(
name: "Youth Assisting Youth",
location: "5734 Yonge Street Toronto Ontario M2M 4E7",
description: "Youth Assisting Youth is a volunteer-based peer mentoring program which individually matches mentors with similarly aged at-risk or vulnerable children and adolescents aged 6–15 years old.",
image_url: "http://thepeerproject.com/wp-content/plugins/carousel-horizontal-posts-content-slider-pro/assets/images/default-image.jpg",
)

Organization.create(
name: "The Salvation Army",
location: "160 Jarvis St, Toronto, ON M5B 2E1",
description: "The Salvation Army is an international Christian church. Its message is based on the Bible; its ministry is motivated by love for God and the needs of humanity.",
image_url: "https://s3-media1.fl.yelpcdn.com/bphoto/9stBMaZRZElJSOLbLO7NFQ/l.jpg",
)

Organization.create(
name: "Ronald McDonald House Charities Toronto",
location: "240 McCaul St Toronto ON M5T 1W5",
description: "Ronald McDonald Houses enhance the delivery of family-centred care at hospitals.",
image_url: "https://pbs.twimg.com/profile_images/576371626834403328/tjGiGp-7_400x400.png",
)
############### events seeds ################################
Event.create(
organization_id: 1,
name: "Toronto Taste",
description: "Our biggest fundraiser of the year, Toronto Taste is also the city’s premier culinary event with more than 60 chefs and 30 beverage purveyors serving all-you-can-eat tastes to 1,500 guests. It requires more than 400 volunteers for setup, teardown, auction assistance, catering assistance, pre-event support, and more. Find out more about.",
location: "25 Dockside Dr, Toronto, ON M5A 0B5",
date: "2017-06-04",
start_time: "2000-01-01 09:00:00",
end_time: "2000-01-01 17:00:00",
capacity: 20,
)

Event.create(
organization_id: 1,
name: "Feeding Our Future",
description: "Spend a weekday during the summer to help make hundreds of delicious and lunches for children attending city camps.  Second Harvest delivers to about a dozen community centres in Toronto thus ensuring children who get subsidized lunches during the school year will also be receiving at least one nutritious meal a day during the summer. Groups of 6-7 volunteers are needed per shift.",
location: "1450 Lodestar Rd North York ON M3J 3C1",
date: "2017-07-01",
start_time: "2000-01-01 13:00:00",
end_time: "2000-01-01 18:00:00",
capacity: 30,
)

Event.create(
organization_id: 2,
name: "Selling Daffodil Pins",
description: "Support Canadians living with cancer by selling daffodil pins. This shift may require that you stand for a few hours. Please dress appropriately and wear comfortable shoes. If you require a chair for medical reasons, please contact us directly. Help raise awareness by bringing your enthusiasm and passion to a Loblaws near you!",
location: "Lowlaws across the city.",
date: "2017-04-01",
start_time: "2000-01-01 09:00:00",
end_time: "2000-01-01 20:00:00",
capacity: 100,
)

Event.create(
organization_id: 3,
name: "Clinical Program Volunteer Placement",
description: "Volunteering with a Clinical Program at CAMH is a great way for volunteers to gain front line exposure in a mental health or addiction setting. Volunteers have the opportunity to engage and interact with clients in a wide array of settings, both at CAMH and in the community and in a variety of activities based on client needs. All positions require a minimum of a year commitment. Assignments range from 1.5 hours to 4 hours per week.",
location: "250 College Toronto ON M5T 1L8",
date: "2017-08-01",
start_time: "2000-01-01 09:00:00",
end_time: "2000-01-01 18:00:00",
capacity: 5,
)

Event.create(
organization_id: 3,
name: "Research Volunteer Placement",
description: "Research Volunteers assist staff in obtaining information necessary for research projects. The departments in which volunteers work vary depending on the availability of the programs. The skills required for these positions include knowledge of research methodology, experience using SPSS (statistical software) and some prior relevant experience. Length of commitment is contingent upon the assignment; volunteers can assist 5 to 8 hours per week.",
location: "250 College Toronto ON M5T 1L8",
date: "2017-08-01",
start_time: "2000-01-01 09:00:00",
end_time: "2000-01-01 18:00:00",
capacity: 5,
)

Event.create(
organization_id: 4,
name: "Become A Mentor",
description: "The Peer Project | Youth Assisting Youth is a non-profit organization that focuses on matching newcomer and at risk youth with older volunteer youth mentors in Toronto and York Region in a youth mentoring program.",
location: "5734 Yonge Street Toronto Ontario M2M 4E7",
date: "2017-05-17",
start_time: "2000-01-01 09:00:00",
end_time: "2000-01-01 18:00:00",
capacity: 6,
)

Event.create(
organization_id: 5,
name: "Thrift Store Sale",
description: "Help needed at Thrift Store. Volunteers needed to help sorting clothing and display them for sale, stocking shelves and general tidying of store.",
location: "1219 Bloor St W, Toronto, ON M6H 1N6, Canada",
date: "2017-03-30",
start_time: "2000-01-01 08:00:00",
end_time: "2000-01-01 17:00:00",
capacity: 6,
)

Event.create(
organization_id: 5,
name: "Thrift Store Sale",
description: "Help needed at Thrift Store. Volunteers needed to help sorting clothing and display them for sale, stocking shelves and general tidying of store.",
location: "252 Parliament St, Toronto, ON M5A 3A4, Canada",
date: "2017-03-30",
start_time: "2000-01-01 08:00:00",
end_time: "2000-01-01 17:00:00",
capacity: 8,
)

Event.create(
organization_id: 6,
name: "Meals on the Go Volunteer",
description: "We are looking for a volunteer to support our Food Coordinator and the volunteer groups who come to our House to prepare sandwiches for the Meals-on-the-Go program. This is a leadership role. You will welcome groups, run a small orientation and help them stay on schedule. During this time you will also be able to interact with families staying at the House.",
location: "240 McCaul St Toronto ON M5T 1W5",
date: "2017-03-28",
start_time: "2000-01-01 08:00:00",
end_time: "2000-01-01 17:00:00",
capacity: 4,
)

Event.create(
organization_id: 6,
name: "Family Room Summer Volunteers",
description: "This is a great opportunity for post-secondary students to have a meaningful volunteer experience during their summer vacation. You will gain knowledge and see firsthand the role that RMHC Toronto plays in the continuum of family-centered care. It will provide you with a deeper understanding of the impact of illness on families with a sick child. You will have the opportunity to meet and work with other awesome people and to know at the end of each shift that you have made a difference in the lives of our families.",
location: "240 McCaul St Toronto ON M5T 1W5",
date: "2017-03-29",
start_time: "2000-01-01 08:00:00",
end_time: "2000-01-01 20:00:00",
capacity: 10,
)
