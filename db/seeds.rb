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

Task.create!(user_id: 1, title: 'I need someone to walk my dog', description: 'My dog Neptune needs a long walk today as I am home sick', start_date: "#{Date.today}", start_time: "#{Time.now}", end_date: "#{Date.today}", end_time: "#{Time.now}", category: "pets")
Task.create!(user_id: 2, title: 'I need someone to take me to meet Nick Cage', description: 'I LOVE NIC CAGE', start_date: "#{Date.today}", start_time: "#{Time.now}", end_date: "#{Date.today}", end_time: "#{Time.now}", category: "transport")
Task.create!(user_id: 2, title: 'I need someone to take care of my cat', description: 'She needs to be well looked after', start_date: "#{Date.today}", start_time: "#{Time.now}", end_date: "#{Date.today}", end_time: "#{Time.now}", category: "pets")
Task.create!(user_id: 2, title: 'I need taking to the shops', description: 'For my usual Sunday grocery shopping', start_date: "#{Date.today}", start_time: "#{Time.now}", end_date: "#{Date.today}", end_time: "#{Time.now}", category: "transport")


Booking.create!(user_id: 1, task_id: 2, status: "pending")
Booking.create!(user_id: 2, task_id: 1, status: "confirmed")
