# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Task.destroy_all
User.destroy_all



user1 = User.create!(email: 'janie.amero@gmail.com', password: "janieamero", first_name: 'Janie', last_name: 'Amero', profile_picture: 'https://avatars3.githubusercontent.com/u/43782388?v=4', description: 'I like ponies')
user2 = User.create!(email: 'maddie@simplywellbeing.com', password: "maddielewis", first_name: 'Maddie', last_name: 'Lewis', profile_picture: 'https://avatars1.githubusercontent.com/u/34004218?v=4', description: 'I love Nic Cage')
user3 = User.create!(email: 'mgould16@gmail.com', password: "mgould16", first_name: 'Mark', last_name: 'Gould', profile_picture: "https://avatars2.githubusercontent.com/u/16183242?v=4", description: 'I love lamp')
user4 = User.create!(email: 'killeralients@outlook.com', password: "killeraliens", first_name: 'Ally', last_name: 'Campbell', profile_picture: "https://avatars1.githubusercontent.com/u/39322308?v=4", description: "I'm an American")

task1 = Task.create!(user: user1, booked: true, title: 'Walk my dog', description: 'My dog Neptune needs a long walk today as I am home sick. An hour long walk would be great, around the perimeter of bushy park.', start_time: "#{Time.now}", end_time: "#{Time.now}", category: "pets", address: "138 Kingsland Rd, London E2 8DY", remote_photo_url: "https://images.unsplash.com/photo-1518587671104-999f3dd2d340?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
task2 = Task.create!(user: user2, title: 'Take me to meet Nic Cage', description: 'I LOVE NIC CAGE. Please take me to meet him. Or give me the contact details of someone who might know him - there are 6 degrees of seperation between us and you might be one of those degrees.', start_time: "#{Time.now}", end_time: "#{Time.now}", category: "other", address: "2 Drysdale St, London N1 6NA", remote_photo_url: "https://financebuzz.imgix.net/images/2016/02/03/nicolascagepainting18.jpg?auto=compress&fit=crop&h=512&w=970&ixlib=python-1.0.0")
Task.create!(user: user2, title: 'Take care of my cat', description: 'She needs to be well looked after', start_time: "#{Time.now}", end_time: "#{Time.now + (2*7*24*60*60)}", category: "pets", address: "69 Drysdale St, London N1 6ND", remote_photo_url: "https://images.pexels.com/photos/45170/kittens-cat-cat-puppy-rush-45170.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
Task.create!(user: user3, title: 'Help me shop', description: 'For my usual Sunday grocery shopping', start_time: "#{Time.now}", end_time: "#{Time.now + (2*7*24*60*60)}", category: "shopping", address: "178 Junction Rd, London N19 5QQ", remote_photo_url: "https://images.unsplash.com/photo-1473648717346-73c9c15cbad6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80")
Task.create!(user: user1, title: 'Help me on my walk', description: 'My dog Neptune needs a long walk today as I am home sick', start_time: "#{Time.now}", end_time: "#{Time.now + (2*7*24*60*60)}", category: "pets", address: "138 Kingsland Rd, London E2 8DY", remote_photo_url: "https://images.unsplash.com/photo-1518587671104-999f3dd2d340?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
Task.create!(user: user4, title: 'Do my grocery shop', description: 'For my usual Sunday grocery shopping', start_time: "#{Time.now}", end_time: "#{Time.now + (2*7*24*60*60)}", category: "shopping", address: "2 Drysdale St, London N1 6NA", remote_photo_url: "https://financebuzz.imgix.net/images/2016/02/03/nicolascagepainting18.jpg?auto=compress&fit=crop&h=512&w=970&ixlib=python-1.0.0")
Task.create!(user: user1, title: 'Walk my cat', description: 'She needs to be well looked after', start_time: "#{Time.now}", end_time: "#{Time.now + (2*7*24*60*60)}", category: "pets", address: "69 Drysdale St, London N1 6ND", remote_photo_url: "https://images.pexels.com/photos/45170/kittens-cat-cat-puppy-rush-45170.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
Task.create!(user: user2, title: 'Help me move', description: 'Moving house but would love a helping hand.', start_time: "#{Time.now}", end_time: "#{Time.now + (2*7*24*60*60)}", category: "DIY", address: "178 Junction Rd, London N19 5QQ", remote_photo_url: "https://images.unsplash.com/photo-1473648717346-73c9c15cbad6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80")
Task.create!(user: user1, title: 'Help me with some DIY', description: 'My dog Neptune needs a long walk today as I am home sick', start_time: "#{Time.now}", end_time: "#{Time.now + (2*7*24*60*60)}", category: "pets", address: "138 Kingsland Rd, London E2 8DY", remote_photo_url: "https://images.unsplash.com/photo-1518587671104-999f3dd2d340?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
Task.create!(user: user4, title: 'Cook me a meal', description: 'I LOVE NIC CAGE', start_time: "#{Time.now}", end_time: "#{Time.now + (2*7*24*60*60)}", category: "other", address: "2 Drysdale St, London N1 6NA", remote_photo_url: "https://financebuzz.imgix.net/images/2016/02/03/nicolascagepainting18.jpg?auto=compress&fit=crop&h=512&w=970&ixlib=python-1.0.0")
Task.create!(user: user2, title: 'Walk my dog', description: 'She needs to be well looked after', start_time: "#{Time.now}", end_time: "#{Time.now + (2*7*24*60*60)}", category: "pets", address: "69 Drysdale St, London N1 6ND", remote_photo_url: "https://images.pexels.com/photos/45170/kittens-cat-cat-puppy-rush-45170.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
Task.create!(user: user3, title: 'Help me shop', description: 'For my usual Sunday grocery shopping', start_time: "#{Time.now}", end_time: "#{Time.now + (2*7*24*60*60)}", category: "shopping", address: "178 Junction Rd, London N19 5QQ", remote_photo_url: "https://images.unsplash.com/photo-1473648717346-73c9c15cbad6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80")
Task.create!(user: user1, title: 'Help me move', description: 'Moving house but would love a helping hand.', start_time: "#{Time.now}", end_time: "#{Time.now + (2*7*24*60*60)}", category: "DIY", address: "138 Kingsland Rd, London E2 8DY", remote_photo_url: "https://images.unsplash.com/photo-1518587671104-999f3dd2d340?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
Task.create!(user: user2, title: 'Please help me meet Nick Cage', description: 'I LOVE NIC CAGE.', start_time: "#{Time.now}", end_time: "#{Time.now + (2*7*24*60*60)}", category: "other", address: "2 Drysdale St, London N1 6NA", remote_photo_url: "https://financebuzz.imgix.net/images/2016/02/03/nicolascagepainting18.jpg?auto=compress&fit=crop&h=512&w=970&ixlib=python-1.0.0")
Task.create!(user: user2, title: 'Drive me home from the hospital', description: '30 min drive to get there', start_time: "#{Time.now}", end_time: "#{Time.now + (2*7*24*60*60)}", category: "transport", address: "69 Drysdale St, London N1 6ND", remote_photo_url: "https://images.pexels.com/photos/45170/kittens-cat-cat-puppy-rush-45170.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")
Task.create!(user: user4, title: 'Help me cook', description: 'For my usual Sunday roast, I have arthritus so cannot cook like I used to without help', start_time: "#{Time.now}", end_time: "#{Time.now + (2*7*24*60*60)}", category: "DIY", address: "178 Junction Rd, London N19 5QQ", remote_photo_url: "https://images.pexels.com/photos/301703/pexels-photo-301703.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260")

Booking.create!(user: user1, task: task2, status: "pending", time:"#{Time.now}", message:"I, too, love nic cage and would love to help you in this endeavour")
Booking.create!(user: user2, task: task1, status: "confirmed", time:"#{Time.now}", message:"I love dogs and would be happy to help.")
