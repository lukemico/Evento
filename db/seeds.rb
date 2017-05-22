Location.destroy_all

loc1 = Location.create({
  state: "NSW",
  street: "York Strete",
  postcode: 2000,
  suburb: "Sydney",
  street_number:"55",
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
  event_type_id: type4.id,
  location_id: loc1.id
})

event2 = Event.create({
  name: "Ice Skating",
  date: Date.today,
  cost: 20.00,
  description: "Learn to Iceskate",
  image: "www.iceskate.test",
  event_type_id: type5.id,
  location_id: loc1.id
})

User.destroy_all

user1 = User.create({
  first_name: "Simone",
  last_name: "Italiano",
  dob: Date.today,
  email: "simone@ga.co",
  phone_number: "0406 447 446",
  is_admin: true
})

user2 = User.create({
  first_name: "Luke",
  last_name: "Panda",
  dob: Date.today,
  email: "luke@ga.co",
  phone_number: "0406 447 221",
  is_admin: true
})

user3 = User.create({
  first_name: "Phil",
  last_name: "One Tree",
  dob: Date.today,
  email: "phil@ga.co",
  phone_number: "0406 447 009",
  is_admin: true
})

user4 = User.create({
  first_name: "Bob",
  last_name: "Smith",
  dob: Date.today,
  email: "bobs@gmail.com",
  phone_number: "0406 447 009",
  is_admin: false
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
# puts event1.location.state
# puts loc1.events.count

# puts event1.event_types.all
# puts type4.events.count

# puts user1.events.first
# puts event2.users.first

