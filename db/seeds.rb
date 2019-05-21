#To use the seeds We need to have at least one user.

#Destroy all the users and equipment
Equipment.destroy_all

#Creating 5 equipment
Equipment.create!(name: "Skateboard", description: "Nice Skateboard", sport: "Skateboarding", photo: "skateboard.png", user_id: 1)
Equipment.create!(name: "Surfboard", description: "Nice Surfboard", sport: "Surfing", photo: "Surfboard.png", user_id: 1)
