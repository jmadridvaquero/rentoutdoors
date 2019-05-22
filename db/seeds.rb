#To use the seeds We need to have at least one user.

#Destroy all the users and equipment
Equipment.destroy_all



Equipment.create(description: 'fccc', price: 10, sport: 'soccer', photo: './assets/images/logo.png', address: '15 Rue Saint Viateur O, Montréal, QC H2T 2K7', name: 'my_equipment')
