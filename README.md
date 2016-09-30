# 🎆 Reach Your Fundraising Auction Goals 🎆

#### By Olivia Hinton | September 2016

## API Code Review Details
Using the geocoder and gmaps4rails gems, I added a Google Map on the Donor index page that displays the location of each donor assigned to the signed-in volunteer.

## Description

This app helps you reach your fundraising auction procurement goals by assisting with donor record management and communicating with your volunteer committee!

Features include:
* a database of your donors and volunteers, with the ability to assign a volunteer to a donor
* an admin dashboard to see the current progress toward your fundraising goal
* a dashboard so volunteers can see which donors they are responsible for contacting and record updates about donors
* a Google Calendar to show goal deadlines, schedule volunteer committee meetings, invite volunteers to meetings and record responses to invites

## General Setup Instructions

* Clone this repository
* Open project and create an .env file in the top level of the project for MAP_API_KEY and set it equal to your Google Map API key
* Install gems by running command `$ bundle` in the terminal
* Open another terminal tab and type `postgres` to start PostgreSQL database
* Return to first terminal tab and run `rails db:create` to create the databases
* Run `rails db:schema:load` to create tables
* Launch the Rails server by running command `$ rails s` in the terminal
* Launch site by visiting localhost:3000 in browser

## To Do List
Overall
- [ ] 100% test coverage
- [ ] Utilize VCR gem

Donors
- [ ] Fix edit and delete donor paths
- [ ] Format how phone numbers get saved to the database
- [ ] Add business hours to donor form
- [ ] Add true form field to update form to mark if a donor has agreed to donate
- [ ] Add a true form field to update form to mark if a donor will never donate, or isn't interested in being contacted again
- [ ] Add if statements around fields to hide them if they don't have any info

Volunteers
- [ ] Add ability for volunteers to upload an avatar

## Tech Used

* Ruby on Rails (v. 5.0.0.1)
* Active Record
* PostgreSQL
* Bootstrap/SCSS

### License

*This software is licensed under the MIT license.*

Copyright (c) 2016 **Olivia Hinton**
