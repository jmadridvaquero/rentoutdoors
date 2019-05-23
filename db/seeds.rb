#To use the seeds You have to drop the data base.

#Destroy all the users and equipment
Equipment.destroy_all
users = User.all
if users.count > 1
  users.each do |user|
    user.destroy
  end
elsif users.count == 1
  only_user = User.first
  only_user.destroy
end


#Create 4 users
puts "creating users..."
User.create!(username: "Diego", email: "diego@email.com", password: "123456", zipcode: "7503 Rue St Denis Montreal QC H2R 2E7(Montreal ,Quebec)", remote_avatar_photo_url: "https://www.w3schools.com/howto/img_avatar.png")
User.create!(username: "Javier", email: "javier@email.com", password: "123456", zipcode: "6817 43 Av Montreal QC H1T 2R9(Montreal ,Quebec)", remote_avatar_photo_url: "https://www.w3schools.com/howto/img_avatar.png")
User.create!(username: "Simon", email: "simon@email.com", password: "123456", zipcode: "251 Av Percival Montreal Ouest QC H4X 1T8(Montreal ,Quebec)", remote_avatar_photo_url: "https://www.w3schools.com/howto/img_avatar.png")
User.create!(username: "Robert", email: "robert@email.com", password: "123456", zipcode: "7766 George Street Lasalle QC H8P 1E1(Montreal ,Quebec)", remote_avatar_photo_url: "https://www.w3schools.com/howto/img_avatar.png")
#Create 5 equipment
puts "creating pieces of equipment..."

Equipment.create!(address: "8520 rue Saint-Denis, Montréal, QC H2P 2H2", name: "Kayak", sport: "Beach", price: 20, description: "Designed to make the outdoors more accessible, the Beach LT is one of the world's easiest collapsible boats to put together. Perfect for both beginners and experts, it's ideal for a casual paddle on calm water, spontaneous day trips, and sharing with friends and family. Built with simplicity in mind, it still exceeds our usual high standards of strength and durability. And of course, it's as easy on the eyes as it is on the water. " ,remote_photo_url: "https://images.unsplash.com/photo-1544407558-71e53c6a1136?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80", user: User.first)
sleep(1)
Equipment.create!(address: "5723 Av du Parc, Montréal, QC H2V 4H2", name: "2 person tent", sport: "Mountain", price: 20, description: "This two person Marmot tent is for experienced campers looking for the highest quality. Two doors and two vestibules makes it easy for two people to get in and out of this tent without bothering each other. With a trail weight of 2.21 kg, you can easily pack this tent for backpacking trips. We recommend this tent if you are concerned about the quality and weight during a backpacking trip." ,remote_photo_url: "https://images.unsplash.com/photo-1445308394109-4ec2920981b1?ixlib=rb-1.2.1&auto=format&fit=crop&w=1653&q=80", user: User.second)
sleep(1)
Equipment.create!(address: "5723 Av du Parc, Montréal, QC H2V 4H2", name: "Bow & arrows", sport: "Mountain", price: 20, description: "is bow has been my steady partner all these years, safe at my side. The arrows it launches fly straight and true, always right on target. I would feel less at ease walking these forests without it, I guess some things become a part of you over time." ,remote_photo_url: "https://images.unsplash.com/photo-1544530228-b1c874da4701?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2117&q=80", user: User.third)
sleep(1)
Equipment.create!(address: "5333 Avenue Casgrain, Montréal, QC H2T 1X3", name: "Rod", sport: "River", price: 20, description: "An old bent, crooked fishing rod that belongs in a museum, you may try it for a few bucks!" ,remote_photo_url: "https://images.unsplash.com/photo-1449158672805-f0deda6782ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80", user: User.fourth)
sleep(1)
Equipment.create!(address: "6584 Boul St-Laurent, Montréal, QC H2S 3C6", name: "Boat", sport: "River", price: 20, description: "I bind my boat to the shore, to the anchor point that will keep it safely in the harbour until conditions are fair enough to sail once more. I wrap the rope as my grandfather showed me how, though that was so very long ago. It's a memory made from watching him in awe, feeling the movement of his weathered hands as if they were my own, then trying it for myself. My hands move as if they were his, the decades between nothing at all, feeling the texture and the movement it takes to make the so knot fast and true." ,remote_photo_url: "https://images.unsplash.com/photo-1489746180847-52dab13d0639?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2084&q=80", user: User.first)


Equipment.create!(address: "1460 rue Saint-Denis, Montréal", name: "Surfboard", sport: "Beach", price: 20, description: "The above is a 7’4 ‘mini-mal’ by Liquid Lines.  I usually suggest that learning surfers get a surfboard between 7’2 and 8’0 foot, depending on their weight. If you’re a smaller female, a 7 ‘0 or a 7’2 should do the trick. If you’re a big guy starting out maybe  a 7’6 or a 8’0 foot will do. I started with a 7’6 (pictured above). This doesn’t have much rocker, although rocker is really unimportant to you in the beginning of your surfing journey.  You can see how thick it is through the center. This is a big, wide, stable board. It’s not really good for anything but catching waves, getting up to your feet and staying on your feet as long as possible." ,remote_photo_url: "https://images.unsplash.com/photo-1526486107589-1987e805f854?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: User.first)
sleep(1)
Equipment.create!(address: "1230 Av du Parc, Montréal", name: "One person tent", sport: "Mountain", price: 20, description: "This one person The North Face tent is for avid campers looking for the highest quality. Perfect for solo backpacking and camping trips, this tent features a two-pole design which makes it a breeze to set up. Full rain fly protects against the elements in the harshest weather conditions. Vestibule provides additional protection and room for a backpack and a dog. Rent this tent if you are concerned about the weight you will be carrying while backpacking." ,remote_photo_url: "https://images.unsplash.com/photo-1494545261862-dadfb7e1c13d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80", user: User.second)
sleep(1)
Equipment.create!(address: "8630 Av du Parc, Montréal", name: "Trail bike", sport: "Mountain", price: 20, description: "This is arguably the most common mountain biking style because the category isn’t grounded in any specific type of racing. If you’re interested in meeting up with friends at the local trailhead and riding a mixture of climbs and descents, then this is the style for you. Bikes in this category place equal emphasis on fun, efficiency and sensible overall weight." ,remote_photo_url: "https://images.unsplash.com/photo-1553069790-b8df5514a6e5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80", user: User.third)
sleep(1)
Equipment.create!(address: "2350 rue Fullum, Montréal", name: "Fishing tackle", sport: "River", price: 20, description: "Fishing tackle is the equipment used by anglers when fishing. Almost any equipment or gear used for fishing can be called fishing tackle. Some examples are hooks, lines, sinkers, floats, rods, reels, baits, lures, spears, nets, gaffs, traps, waders and tackle boxes.

Gear that is attached to the end of a fishing line is called terminal tackle. This includes hooks, leaders, swivels, sinkers, floats, split rings and wire, snaps, beads, spoons, blades, spinners and clevises to attach spinner blades to fishing lures. Sometimes the term fishing rig is used for a completed assembly of tackle ready for fishing.

Fishing tackle can be contrasted with fishing techniques. Fishing tackle refers to the physical equipment that is used when fishing, whereas fishing techniques refers to the manner in which the tackle is used when fishing." ,remote_photo_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Angler_at_devizes_england_arp.jpg/1200px-Angler_at_devizes_england_arp.jpg", user: User.fourth)
sleep(1)
Equipment.create!(address: "1440 boulevard Saint-Vital, Montréal", name: "Paddle board", sport: "River", price: 25, description: "Brand new little used 2018 Adventurer 2 inflatable SUP board from Tower SUP. The size is 10'4 and comes complete with paddles, fins, bags, etc. These sell in stores and online for $1200, you wont find a better deal.

" ,remote_photo_url: "https://images.unsplash.com/photo-1517176118179-65244903d13c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: User.first)

Equipment.create!(address: "1360 rue Guizot, Montreal", name: "Beach cactus float", sport: "Beach", price: 10, description: "Use it on the deck or in the water, the Suntan Oasis is the ultimate way to relax as you tan. Measuring 71 in. L, this comfortable lounger is the perfect size for almost any adult to drift their cares way. Features a clear reflective top for even tanning, separate inflatable pillow, a self-draining bottom and a grab rope. On extra hot days simply fill the Suntan Oasis with water to cool off." ,remote_photo_url: "https://images.unsplash.com/photo-1525654844438-6667c015f3ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: User.first)

Equipment.create!(address: "8320 boulevard Saint-Martin, Laval des Rapides", name: "Kayak", sport: "River", price: 20, description: "The kayak is far heavier than I had imagined. On water of course it glides, as weightless as the earth in space. It takes the two of us to haul it down to the water's edge and let the carrot coloured boat bob at the shore - the front end planted on the shingle and the rudder end joyously afloat. Then we head back to the shack to pick up the second. A double would be less work right now, just one to carry, but the fun of paddling solo is worth the effort. One kayak each means hours of fun, both of us in one boat means hours of frustration. The rubber skirts look ridiculous until we sit, and then they are just the bomb, stretching around the rim to keep us dryer as we paddle out. I get the carrot, Ben gets a blue brighter than the sky and now the only task is to paddle to the bay, lunch safely stowed in the cubby holes." ,remote_photo_url: "https://images.unsplash.com/photo-1544407558-71e53c6a1136?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80", user: User.first)
sleep(1)
Equipment.create!(address: "1250 rue de la Gauchetiere, Montreal", name: "Backpack", sport: "Mountain", price: 20, description: "This Marmot backpack is an ideal choice if you plan to spend more than a day in the wilderness. It is big enough to store everything you will need and light enough to make hiking a breeze. Highly adjustable chest and shoulder straps make this backpack suitable for both men and women." ,remote_photo_url: "https://images.unsplash.com/photo-1481873339735-575f65b86059?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80", user: User.second)
sleep(1)
Equipment.create!(address: "2220 rue Jarry, Montréal", name: "Single burner camp stove", sport: "Mountain", price: 8, description: "You need a stove to brew coffee and prepare dinner. A single burner camp stove will do the trick for most campers. Unless you have a large family or a group of friends, we recommend renting this single burner camp stove. Don't forget to buy a propane cylinder as well because the stove rental does not include a propane cylinder.
" ,remote_photo_url: "https://images.unsplash.com/photo-1522041350204-22285237eeca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: User.third)
sleep(1)
Equipment.create!(address: "1260 boulevard Saint-Michel, Montréal", name: "Jet ski", sport: "Beach", price: 200, description: "Rent a jet ski and explore Split and its surroundings, Kastela, Trogir, Ciovo or visit one of the islands of Solta, Brac….. Enjoy riding the latest models of Jet Skis and experience Dalmatia from another perspective." ,remote_photo_url: "https://images.unsplash.com/photo-1473682150760-51d4f94b09d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: User.fourth)
sleep(1)
Equipment.create!(address: "1360 rue de Liege, Montreal", name: "Hot float", sport: "River", price: 20, description: "Use it on the deck or in the water, the Suntan Oasis is the ultimate way to relax as you tan. Measuring 71 in. L, this comfortable lounger is the perfect size for almost any adult to drift their cares way. Features a clear reflective top for even tanning, separate inflatable pillow, a self-draining bottom and a grab rope. On extra hot days simply fill the Suntan Oasis with water to cool off." ,remote_photo_url: "https://images.unsplash.com/photo-1534109287195-26cc74f4940f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: User.first)

puts "seeds done! time to launch the server"
