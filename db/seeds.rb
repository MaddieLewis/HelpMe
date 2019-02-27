# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Task.destroy_all
Booking.destroy_all

User.create!(email: 'janie.amero@gmail.com', password: "janieamero", first_name: 'Janie', last_name: 'Amero', profile_picture: 'https://avatars3.githubusercontent.com/u/43782388?v=4', description: 'I like ponies')
User.create!(email: 'maddie@simplywellbeing.com', password: "maddielewis", first_name: 'Maddie', last_name: 'Lewis', profile_picture: 'https://avatars1.githubusercontent.com/u/34004218?v=4', description: 'I love Nic Cage')
User.create!(email: 'mgould16@gmail.com', password: "mgould16", first_name: 'Mark', last_name: 'Gould', profile_picture: "https://avatars2.githubusercontent.com/u/16183242?v=4", description: 'I love lamp')
User.create!(email: 'killeralients@outlook.com', password: "killeraliens", first_name: 'Ally', last_name: 'Campbell', profile_picture: "https://avatars1.githubusercontent.com/u/39322308?v=4", description: "I'm an American")

Task.create!(user_id: 1, title: 'I need someone to walk my dog', description: 'My dog Neptune needs a long walk today as I am home sick', start_time: "#{Time.now}", end_time: "#{Time.now}", category: "pets", address: "Unit 13, 138 Kingsland Rd, London E2 8DY", photo: "https://images.unsplash.com/photo-1518587671104-999f3dd2d340?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
Task.create!(user_id: 2, title: 'I need someone to take me to meet Nick Cage', description: 'I LOVE NIC CAGE', start_time: "#{Time.now}", end_time: "#{Time.now}", category: "transport", address: "2 Drysdale St, London N1 6NA", photo: "https://financebuzz.imgix.net/images/2016/02/03/nicolascagepainting18.jpg?auto=compress&fit=crop&h=512&w=970&ixlib=python-1.0.0")
Task.create!(user_id: 2, title: 'I need someone to take care of my cat', description: 'She needs to be well looked after', start_time: "#{Time.now}", end_time: "#{Time.now}", category: "pets", address: "69 Drysdale St, London N1 6ND", photo: "https://images.unsplash.com/photo-1503777119540-ce54b422baff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=933&q=80")
Task.create!(user_id: 2, title: 'I need taking to the shops', description: 'For my usual Sunday grocery shopping', start_time: "#{Time.now}", end_time: "#{Time.now}", category: "transport", address: "178 Junction Rd, London N19 5QQ", photo: "https://images.unsplash.com/photo-1473648717346-73c9c15cbad6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80")


Booking.create!(user_id: 1, task_id: 2, status: "pending")
Booking.create!(user_id: 2, task_id: 1, status: "confirmed")
