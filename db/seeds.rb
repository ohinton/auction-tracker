User.create! email: "test@email.com", password: 'password', password_confirmation: 'password'

donor_list = [
  ['VooDoo Doughnuts', '(503) 241-4704', 'info@voodoo.com', '22 SW 3rd Ave', 'Portland', 'OR', '97204', 'Kenneth Pogson', 'kenneth@voodoo.com', '(503) 682-7218', 'http://voodoodoughnut.com/', 8, 17, 1, 1],
  ['Papa Hayden - East', '(503) 232-9440', 'east@papahaydn.com', '5829 SE Milwaukie Ave', 'Portland', 'OR', '97202', 'John Smith', 'john@papahaydn.com', '(503) 000-0000', 'http://www.papahaydn.com/papa-haydn-east/', 8, 17, 1, 1],
  ['Pabst Blue Ribbon', '(503) 000-0000', 'info@pbr.com', '', '', '', '', 'Matt Slesser', 'mslessler@pbr.com', '(503) 682-7218', '', 8, 17, 1, 2],
  ['Portland Timbers', '503-000-0000', 'info@timbers.com', '1844 SW Morrison St', 'Portland', 'OR', '97205', 'Jackie Smith', 'jackie@timbers.com', '(503) 000-0000', 'http://www.timbers.com/stand-together/stand-together-donation-request-form', 10, 16, 1, 1],
  ['Second Avenue Records', '(503) 222-3783', '', '400 SW 2nd Ave', 'Portland', 'OR', '97204', 'Carolyn', '', '', '', 10, 13, 1, 3]
]

donor_list.each do |name, business_phone, business_email, address, city, state, zip, contact_person, contact_person_email, contact_person_phone, donation_request_link, hours_am, hours_pm, volunteer_id, donation_status_id|
  Donor.create(name: name, business_phone: business_phone, business_email: business_email, address: address, city: city, state: state, zip: zip, contact_person: contact_person, contact_person_email: contact_person_email, contact_person_phone: contact_person_phone, donation_request_link: donation_request_link, hours_am: hours_am, hours_pm: hours_pm, volunteer_id: volunteer_id, donation_status_id: donation_status_id)
end

update_list = [
  ['Left message for Kenneth', '2016-10-1', 1],
  ['Emailed John', '2016-10-2', 2],
  ['Talked to Matt and he said PBR can donate! Follow up next week with donation details.', '2016-10-2', 3],
  ['Left message for Jackie', '2016-10-2', 4],
  ['Talked to Carolyn. Not interested in donating, can only donate to schools.', '2016-10-2', 5]
]

update_list.each do |note, date, donor_id|
  Update.create(note: note, date: date, donor_id: donor_id)
end

day_list = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday'
]

day_list.each do |name|
  Day.create(name: name)
end

status_list = [
  'Maybe',
  'Yes',
  'No'
]

status_list.each do |description|
  DonationStatus.create(description: description)
end
