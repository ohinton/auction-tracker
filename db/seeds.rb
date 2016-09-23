user = User.create! email: "test@email.com", password: 'password', password_confirmation: 'password'

volunteer = Volunteer.create! first_name: 'Olivia', last_name: 'Hinton', phone: '503-000-0000', address: '12345 N Main St', city: 'Portland', state: 'OR', zip: '97210', user_id: 1


donors = Donor.create([

  { name: 'VooDoo Doughnuts', phone: '503-000-0000', email: 'voodoo@gmail.com', address: '12345 N Main St', city: 'Portland', state: 'OR', zip: '97210', volunteer_id: 1 },

  { name: 'Papa Hayden', phone: '503-000-0000', email: 'papahayden@gmail.com', address: '12345 N Main St', city: 'Portland', state: 'OR', zip: '97210', volunteer_id: 1 },

  { name: 'Pabst Blue Ribbon', phone: '503-000-0000', email: 'pbr@gmail.com', address: '12345 N Main St', city: 'Portland', state: 'OR', zip: '97210', volunteer_id: 1 },

  { name: 'Portland Timbers', phone: '503-000-0000', email: 'timbers@gmail.com', address: '12345 N Main St', city: 'Portland', state: 'OR', zip: '97210', volunteer_id: 1 },

  { name: 'Pink Martini', phone: '503-000-0000', email: 'martini@gmail.com', address: '12345 N Main St', city: 'Portland', state: 'OR', zip: '97210', volunteer_id: 1 }

  ])

  updates = Update.create([

    { note: 'Will donate', date: '1/1/2016', volunteer_id: 1, donor_id: 1 },
    { note: 'Can not donate', date: '1/10/2016', volunteer_id: 1, donor_id: 2 },
    { note: 'Might donate', date: '1/15/2016', volunteer_id: 1, donor_id: 3 },
    { note: 'Will donate', date: '1/17/2016', volunteer_id: 1, donor_id: 4 },
    { note: 'Can not donate', date: '1/10/2016', volunteer_id: 1, donor_id: 5 },

    ])
