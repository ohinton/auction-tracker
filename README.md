# 🎆 Reach Your Fundraising Auction Goals 🎆

#### By Olivia Hinton | September 9, 2016

## Known Bugs
* Don't sign up, log in with **email: test@email.com, password: password** to access site.

* In User model, I would like to use "after_create :make_volunteer" to create the user-volunteer association when someone signs up.

>  Currently I get this error:
ActiveRecord::RecordNotSaved in Devise::RegistrationsController#create
Failed to save the new associated volunteer.

> I've checked the database and model relationships, and the model specs are passing. Not sure why it won't create a volunteer after a user is signed up.

* When adding an update to a donor on the index page, I'm currently only able to add the update to the most recent donor created. I can't figure out another way to access the specific donor other than having this in the UpdatesController: @donor = Donor.where(volunteer_id: @volunteer.id).last

* Having issues with specs, specifically with the hidden form fields for setting up the relationship via ids. I believe some issues would be solved by figuring out the user-volunteer association issue.

## Description

This app helps you reach your fundraising auction procurement goals by assisting with donor record management and communicating with your volunteer committee!

Features include:
* a database of your donors and volunteers, with the ability to assign a volunteer to a donor
* an admin dashboard to see the current progress toward your fundraising goal
* a dashboard so volunteers can see which donors they are responsible for contacting and record updates about donors
* a Google Calendar to show goal deadlines, schedule volunteer committee meetings, invite volunteers to meetings and record responses to invites

## General Setup Instructions

* Clone this repository
* Install gems by running command `$ bundle` in the terminal
* Open another terminal tab and type `postgres` to start PostgreSQL database
* Return to first terminal tab and run `rails db:create` to create the databases
* Run `rails db:schema:load` to create tables
* Launch the Rails server by running command `$ rails s` in the terminal
* Launch site by visiting localhost:3000 in browser

## Tech Used

* Ruby on Rails (v. 5.0.0.1)
* Active Record
* PostgreSQL
* Bootstrap/SCSS

### License

*This software is licensed under the MIT license.*

Copyright (c) 2016 **Olivia Hinton**
