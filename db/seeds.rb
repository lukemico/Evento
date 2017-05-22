Location.destroy_all

loc1 = Location.create({
  state: "NSW",
  street: "York Street",
  postcode: 2000,
  suburb: "Sydney",
  street_number:"55",
  country: "Australia"
})

loc2 = Location.create({
  state: "NSW",
  street: "George Street",
  postcode: 2000,
  suburb: "The Rocks",
  street_number:"12",
  country: "Australia"
})

EventType.destroy_all

type1 = EventType.create({
  event_type: "Comedy"
})
type2 = EventType.create({
  event_type: "Musical"
})
type3 = EventType.create({
  event_type: "Film Festival"
})
type4 = EventType.create({
  event_type: "Educational"
})
type5 = EventType.create({
  event_type: "Sporting"
})

Event.destroy_all

event1 = Event.create({
  name: "GA BootCamp",
  date: Date.today,
  cost: 100.00,
  description: "The GA coding bootcamp",
  image: "www.test.test",
  location_id: loc1.id
})

event2 = Event.create({
  name: "Ice Skating",
  date: Date.today,
  cost: 20.00,
  description: "Learn to Iceskate",
  image: "www.iceskate.test",
  location_id: loc1.id
})

event3 = Event.create({
  name: "Bridge Climbing",
  date: Date.today,
  cost: 120.00,
  description: "Climb on the iconic Harbour Bridge!",
  image: "www.bridgeclimb.test",
  event_type_id: type5.id,
  location_id: loc2.id
})

User.destroy_all

user1 = User.create({
  first_name: "Simone",
  last_name: "Italiano",
  dob: Date.today,
  email: "simone@ga.co",
  phone_number: "0406 447 446",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user2 = User.create({
  first_name: "Luke",
  last_name: "Panda",
  dob: Date.today,
  email: "luke@ga.co",
  phone_number: "0406 447 221",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user3 = User.create({
  first_name: "Phil",
  last_name: "One Tree",
  dob: Date.today,
  email: "phil@ga.co",
  phone_number: "0406 447 009",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user4 = User.create({
  first_name: "Bob",
  last_name: "Smith",
  dob: Date.today,
  email: "bobs@gmail.com",
  phone_number: "0406 447 009",
  is_admin: false,
  password: "chicken",
  password_confirmation: "chicken"
})

Booking.destroy_all

booking1 = Booking.create({
  event_id: event1.id,
  user_id: user1.id
})

booking2 = Booking.create({
  event_id: event2.id,
  user_id: user3.id
})

booking3 = Booking.create({
  event_id: event1.id,
  user_id: user2.id
})

booking4 = Booking.create({
  event_id: event2.id,
  user_id: user4.id
})

# TESTING ASSOCIATIONS
puts event1.location.state
puts loc1.events.count

puts event1.event_types.first
puts type4.events.first

puts user1.events.first
puts event2.users.first
