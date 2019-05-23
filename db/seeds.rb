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
User.create!(username: "Diego", email: "diego@email.com", password: "123456", zipcode: "7503 Rue St Denis Montreal QC H2R 2E7(Montreal ,Quebec)", remote_avatar_photo_url: "https://www.w3schools.com/howto/img_avatar.png")
User.create!(username: "Javier", email: "javier@email.com", password: "123456", zipcode: "6817 43 Av Montreal QC H1T 2R9(Montreal ,Quebec)", remote_avatar_photo_url: "https://www.w3schools.com/howto/img_avatar.png")
User.create!(username: "Simon", email: "simon@email.com", password: "123456", zipcode: "251 Av Percival Montreal Ouest QC H4X 1T8(Montreal ,Quebec)", remote_avatar_photo_url: "https://www.w3schools.com/howto/img_avatar.png")
User.create!(username: "Robert", email: "robert@email.com", password: "123456", zipcode: "7766 George Street Lasalle QC H8P 1E1(Montreal ,Quebec)", remote_avatar_photo_url: "https://www.w3schools.com/howto/img_avatar.png")
#Create 5 equipment
Equipment.create!(address: "8520 rue Saint-Denis, Montréal, QC H2P 2H2", name: "Kayak", sport: "Kayaking", price: 20, description: "A very nice Kayak" ,remote_photo_url: "https://images.unsplash.com/photo-1544407558-71e53c6a1136?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80", user: User.first)
sleep(1)
Equipment.create!(address: "5723 Av du Parc, Montréal, QC H2V 4H2", name: "Mat", sport: "Yoga", price: 20, description: "A very nice yoga mat" ,remote_photo_url: "https://images.unsplash.com/photo-1527247693210-1154afbbb326?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: User.second)
sleep(1)
Equipment.create!(address: "5723 Av du Parc, Montréal, QC H2V 4H2", name: "Bow", sport: "Archery", price: 20, description: "A very nice Bow" ,remote_photo_url: "https://images.unsplash.com/photo-1544530228-b1c874da4701?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2117&q=80", user: User.third)
sleep(1)
Equipment.create!(address: "5333 Avenue Casgrain, Montréal, QC H2T 1X3", name: "Rod", sport: "Fishing", price: 20, description: "A very nice Fishing rod" ,remote_photo_url: "https://images.unsplash.com/photo-1449158672805-f0deda6782ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80", user: User.fourth)
sleep(1)
Equipment.create!(address: "6584 Boul St-Laurent, Montréal, QC H2S 3C6", name: "Boat", sport: "Kayaking", price: 20, description: "A very nice blue Kayak" ,remote_photo_url: "https://images.unsplash.com/photo-1489746180847-52dab13d0639?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2084&q=80", user: User.first)
