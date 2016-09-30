user = User.create! email: "test@email.com", password: 'password', password_confirmation: 'password'

volunteer = Volunteer.create! first_name: 'Olivia', last_name: 'Hinton', phone: '503-000-0000', address: '12345 N Main St', city: 'Portland', state: 'OR', zip: '97210', user_id: 1


donors = Donor.create([

  { name: 'VooDoo Doughnuts', business_phone: '(503) 241-4704', business_email: '', address: '22 SW 3rd Ave', city: 'Portland', state: 'OR', zip: '97204', contact_person: 'Jane Snow', contact_person_email: 'jane@voodoo.com', contact_person_phone: '(503) 682-7218', donation_request_link: '', volunteer_id: 1 },

  { name: 'Papa Hayden - East', business_phone: '(503) 232-9440', business_email: 'east@papahaydn.com', address: '5829 SE Milwaukie Ave', city: 'Portland', state: 'OR', zip: '97202', contact_person: 'John Snow', contact_person_email: 'john@papahaydn.com', contact_person_phone: '(503) 000-0000', donation_request_link: '', volunteer_id: 1 },

  { name: 'Pabst Blue Ribbon', business_phone: '(503) 000-0000', business_email: '', address: '', city: '', state: '', zip: '', contact_person: 'Matt Slesser', contact_person_email: 'mslessler@gmail.com', contact_person_phone: '(503) 682-7218', donation_request_link: '', volunteer_id: 1 },

  { name: 'Portland Timbers', business_phone: '503-000-0000', business_email: 'timbers@gmail.com', address: '12345 N Main St', city: 'Portland', state: 'OR', zip: '97210', contact_person: 'Jackie Smith', contact_person_email: 'jackie@timbers.com', contact_person_phone: '(503) 000-0000', donation_request_link: 'http://www.timbers.com/stand-together/stand-together-donation-request-form', volunteer_id: 1 },

  { name: 'Pink Martini', business_phone: '', business_email: '', address: '12345 N Main St', city: 'Portland', state: 'OR', zip: '97210', contact_person: 'Devon Smith', contact_person_email: 'devon@pinkmartini.com', contact_person_phone: '(503) 000-0000', donation_request_link: '', volunteer_id: 1 }

  ])

  updates = Update.create([

    { note: 'Will donate, can mail in donation on Oct. 1', date: '2/1/2016', donor_id: 1 },
    { note: 'Can not donate this year, but follow up in 2017', date: '2/10/2016', donor_id: 2 },
    { note: 'Might donate, follow up next week', date: '1/15/2016', donor_id: 3 },
    { note: 'Will donate, volunteer to pick up donation on 2/1/2016', date: '1/17/2016', donor_id: 4 },
    { note: 'Not interested in donating, can only donate to schools', date: '1/10/2016', donor_id: 5 },

    ])
