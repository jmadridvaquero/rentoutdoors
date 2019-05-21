#To use the seeds We need to have at least one user.

#Destroy all the users and equipment
Equipment.destroy_all

#Creating 5 equipment
Equipment.create!(name: "Skateboard", description: "Nice Skateboard", sport: "Skateboarding", photo: "skateboard.png", user_id: 1)
Equipment.create!(name: "Surfboard", description: "Nice Surfboard", sport: "Surfboarding", photo: "Surfboard.png", user_id: 1)
Equipment.create!(name: "Skis", description: "Nice Skis", sport: "Skiing", photo: "Skis.png", user_id: 1)
Equipment.create!(name: "Bike", description: "Nice Bike", sport: "Biking", photo: "Bike.png", user_id: 1)
Equipment.create!(name: "Snowboard", description: "Nice Snowboard", sport: "Snowboarding", photo: "Snowboard.png", user_id: 1)
