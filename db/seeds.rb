donor_list = [
  ['The DragonTree Holistic Day Spa', '(503) 221-4123', 'info@dragontree.com', '2768 NW Thurman St', 'Portland', 'OR', '97210', 'Lily Smith', 'lily@dragontree.com', '(503) 682-7218', 'http://www.thedragontree.com/', 1, 1],
  ['Papa Hayden - East', '(503) 232-9440', 'east@papahaydn.com', '5829 SE Milwaukie Ave', 'Portland', 'OR', '97202', 'John Smith', 'john@papahaydn.com', '(503) 000-0000', 'http://www.papahaydn.com/papa-haydn-east/', 1, 1],
  ['TeSoAria Vineyard & Winery', '(971) 229-0050', 'info@tesoaria.com', '4003 N Williams Ave', 'Portland', 'OR', '97227', 'Jane Smith', 'jane@tesoaria.com', '(503) 682-7218', 'https://tesoaria.com/wp/PDX_tasting_room_menu.pdf', 1, 2],
  ['Portland Timbers', '(503) 000-0000', 'info@timbers.com', '1844 SW Morrison St', 'Portland', 'OR', '97205', 'Jackie Smith', 'jackie@timbers.com', '(503) 000-0000', 'http://www.timbers.com/stand-together/stand-together-donation-request-form', 1, 1],
  ['Revolution Hall', '(503) 288-3895', 'info@revolutionhall.com', '1300 SE Stark St', 'Portland', 'OR', '97214', 'Jake Smith', 'jake@revolutionhall.com', '(503) 000-0000', 'http://www.revolutionhall.com/', 1, 3]
]

donor_list.each do |name, business_phone, business_email, address, city, state, zip, contact_person, contact_person_email, contact_person_phone, donation_request_link, volunteer_id, donation_status_id|
  Donor.create(name: name, business_phone: business_phone, business_email: business_email, address: address, city: city, state: state, zip: zip, contact_person: contact_person, contact_person_email: contact_person_email, contact_person_phone: contact_person_phone, donation_request_link: donation_request_link, volunteer_id: volunteer_id, donation_status_id: donation_status_id)
end

update_list = [
  ['Left message for Lily', '2016-10-1', 1],
  ['Emailed John', '2016-10-2', 2],
  ['Talked to Jane and he said she can donate! Follow up next week with donation details.', '2016-10-2', 3],
  ['Left message for Jackie', '2016-10-2', 4],
  ['Talked to Jake. Not interested in donating, can only donate to schools.', '2016-10-2', 5]
]

update_list.each do |note, date, donor_id|
  Update.create(note: note, date: date, donor_id: donor_id)
end
