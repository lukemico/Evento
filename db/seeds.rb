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

loc3= Location.create({
  state: "NSW",
  street: "Castlereagh Street",
  postcode: 2000,
  suburb: "Sydney",
  street_number:"70",
  country: "Australia"
})

loc4= Location.create({
  state: "NSW",
  street: "George Street",
  postcode: 2000,
  suburb: "Sydney",
  street_number:"367",
  country: "Australia"
})

loc5= Location.create({
  state: "NSW",
  street: "George Street",
  postcode: 2000,
  suburb: "Sydney",
  street_number:"330",
  country: "Australia"
})

loc6= Location.create({
  state: "NSW",
  street: "Alfred Street",
  postcode: 2000,
  suburb: "Sydney",
  street_number:"31",
  country: "Australia"
})

loc7= Location.create({
  state: "NSW",
  street: "Hickson Road",
  postcode: 2000,
  suburb: "Sydney",
  street_number:"4",
  country: "Australia"
})

loc8= Location.create({
  state: "NSW",
  street: "George Street",
  postcode: 2000,
  suburb: "Sydney",
  street_number:"140",
  country: "Australia"
})

loc9= Location.create({
  state: "NSW",
  street: "Alfred Street",
  postcode: 2061,
  suburb: "Milsons Point",
  street_number:"4",
  country: "Australia"
})

loc10= Location.create({
  state: "NSW",
  street: "East Circular Quay",
  postcode: 2000,
  suburb: "Sydney",
  street_number:"9/2",
  country: "Australia"
})

loc11= Location.create({
  state: "NSW",
  street: "Conservatorium Road",
  postcode: 2000,
  suburb: "Sydney",
  street_number:"1",
  country: "Australia"
})

loc12= Location.create({
  state: "NSW",
  street: "Pyrmont Street",
  postcode: 2009,
  suburb: "Pyrmont",
  street_number:"80",
  country: "Australia"
})

loc13= Location.create({
  state: "NSW",
  street: "Darling Drive",
  postcode: 2009,
  suburb: "Pyrmont",
  street_number:"14",
  country: "Australia"
})

loc14= Location.create({
  state: "NSW",
  street: "Driver Avenue",
  postcode: 2021,
  suburb: "Moore Park",
  street_number:"38",
  country: "Australia"
})

loc15= Location.create({
  state: "NSW",
  street: "Notts Avenue",
  postcode: 2026,
  suburb: "Bondi",
  street_number:"1",
  country: "Australia"
})

loc16= Location.create({
  state: "NSW",
  street: "Art Gallery Road",
  postcode: 2000,
  suburb: "Sydney",
  street_number:"1",
  country: "Australia"
})

loc17= Location.create({
  state: "NSW",
  street: "Locomotive Street",
  postcode: 2015,
  suburb: "Eveleigh",
  street_number:"2",
  country: "Australia"
})

loc18= Location.create({
  state: "NSW",
  street: "George Street",
  postcode: 2000,
  suburb: "Sydney",
  street_number:"455",
  country: "Australia"
})

loc19= Location.create({
  state: "NSW",
  street: "George Street",
  postcode: 2000,
  suburb: "Sydney",
  street_number:"624",
  country: "Australia"
})

loc20= Location.create({
  state: "NSW",
  street: "New Beach Road",
  postcode: 2027,
  suburb: "Sydney",
  street_number:"1",
  country: "Australia"
})


EventType.destroy_all

type1 = EventType.create({
  event_type: "Comedy"
})
type2 = EventType.create({
  event_type: "Music"
})
type3 = EventType.create({
  event_type: "Film Festival"
})
type4 = EventType.create({
  event_type: "Educational"
})
type5 = EventType.create({
  event_type: "Sport & Fitness"
})
type6 = EventType.create({
  event_type: "Concert"
})
type7 = EventType.create({
  event_type: "Children"
})
type8 = EventType.create({
  event_type: "Gallery"
})
type9 = EventType.create({
  event_type: "Food & Wine"
})
type10 = EventType.create({
  event_type: "Culture"
})



Event.destroy_all

event1 = Event.create({
  name: "GA Boot Camp",
  date: Date.today,
  cost: 100.00,
  description: "The General Assembly introduction to coding boot camp",
  # event_type_id: type4.id,
  image: "https://res.cloudinary.com/lukemico/image/upload/v1532174481/photo-1488190211105-8b0e65b80b4e_hnr0sp.jpg",
  location_id: loc1.id
})

event2 = Event.create({
  name: "Ice Skating",
  date: Date.today,
  cost: 20,
  description: "Learn to ice skate, with the best instructors in town.",
  # event_type_id: type5.id,
  image:"https://res.cloudinary.com/lukemico/image/upload/v1532174557/photo-1448716061616-5856dfdb900e_zxnc7g.jpg",
  location_id: loc1.id
})

event3 = Event.create({
  name: "Harbour Bridge Climb",
  date: Date.today,
  cost: 120,
  description: "Climb on the iconic Harbour Bridge! Just don't fall off",
  # event_type_id: type5.id,
  image: "https://res.cloudinary.com/lukemico/image/upload/v1532174563/photo-1447953649934-e82a2f5a11f4_eouong.jpg",
  location_id: loc2.id
})

event4 = Event.create({
  name: "VIVID Sydney",
  date: Date.today,
  cost: 89,
  description: "VIVID Sydney is back to light up our city from 26th May to 17th June!",
  image: "https://res.cloudinary.com/lukemico/image/upload/v1532174421/photo-1466903001289-713a94ef08df_gg2rfr.jpg",
  location_id: loc6.id
})

event5 = Event.create({
  name: "Evolving a Tasty Niche",
  date: Date.today,
  cost: 120,
  description: "Evolving a Tasty Niche is in response to the global phenomenon of creative food careers, from food photography, cake design, dining, to food art, fueled by the power of social media. It is a world injected with robust, novel energy everyday. Today’s niche easily becomes tomorrow’s cliché.",
  image: "https://res.cloudinary.com/lukemico/image/upload/v1532174381/DHHQbqc0RrWVf0uDNe5E_The_Litte_Cafe_lvb2bl.jpg",
  location_id: loc8.id
})

event6 = Event.create({
  name: "Rock 'n' Roll Alternative Market",
  date: Date.today + 1.days,
  cost: 90,
  description: "A one-off line-up of Sydney bands for an inner-west music and shopping extravaganza.",
  image: "https://res.cloudinary.com/lukemico/image/upload/v1532174328/photo-1446057032654-9d8885db76c6_wok3o5.jpg",
  location_id: loc19.id
})

event7 = Event.create({
  name: "Brewhouse Shala Yoga",
  date: Date.today + 2.days,
  cost: 25,
  description: "For the cost of only $25, you’ll be able to enjoy a 60 minute yoga class, followed by a half pint of your favourite craft beer from the guys at Rocks Brewing.",
  image: "https://res.cloudinary.com/lukemico/image/upload/v1532174609/photo-1473022082832-5a30701d4f2c_epko5b.jpg",
  location_id: loc3.id
})

event8 = Event.create({
  name: "Museum of Sydney Scavenger Hunt",
  date: Date.today + 3.days,
  cost: 40,
  description: "Add a of spice to your visit to this fantastic Museum and challenge yourself in this short and quirky trail!",
  image: "https://res.cloudinary.com/lukemico/image/upload/v1532174535/photo-1466032454009-878beeedbb3e_ofmltj.jpg",
  location_id: loc4.id
})

event9 = Event.create({
  name: "World Whisky Dinner",
  date: Date.today  + 4.days,
  cost: 180,
  description: "Join us for the World Whisky Dinner at Osaka Trading Co., located at Tramsheds Harold Park.",
  image: "https://res.cloudinary.com/lukemico/image/upload/v1532174523/photo-1456427651609-f494c36fbc45_ldjxvc.jpg",
  location_id: loc6.id
})

event10 = Event.create({
  name: "Oztronomy: Ed Hurst",
  date: Date.today + 5.days,
  cost: 65,
  description: "Captivated with a whole new way of seeing the world through a lens! ArtSHINE Gallery is working with Head on Photo Festival, the largest festival in Sydney for photography!",
  image: "https://images.unsplash.com/photo-1483470561301-395323922c3c?dpr=1&amp;auto=format&amp;fit=crop&amp;w=1500&amp;h=844&amp;q=80&amp;cs=tinysrgb&amp;crop=&amp;bg=",
  location_id: loc7.id
})

event11 = Event.create({
  name: "Group Fitness - Alexandria Park",
  date: Date.today  + 6.days,
  cost: 45,
  description: "Get results and get sweaty. High-intensity cardio and functional training to burn body fat and boost your fitness.",
  image: "https://images.unsplash.com/photo-1490843524522-ee99e561bb90?dpr=1&amp;auto=format&amp;fit=crop&amp;w=1500&amp;h=997&amp;q=80&amp;cs=tinysrgb&amp;crop=&amp;bg=",
  location_id: loc8.id
})

event12 = Event.create({
  name: "Comedy On The Edge",
  date: Date.today + 7.days,
  cost: 55,
  description: "Sydney's hottest comedy venue!",
  image: "https://images.unsplash.com/photo-1506882741710-98761c574b48?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=794de1f3a10ddf74c928e6cebd1aa55e&auto=format&fit=crop&w=1650&q=80",
  location_id: loc9.id
})

event13 = Event.create({
  name: "Darbuka Drumming Classes",
  date: Date.today + 8.days,
  cost: 42,
  description: "Learn this LOUD instrument with a musically talented teacher in a relaxed environment",
  image: "https://images.unsplash.com/photo-1470784591255-6c7c80d419c8?dpr=1&amp;auto=format&amp;fit=crop&amp;w=1500&amp;h=1151&amp;q=80&amp;cs=tinysrgb&amp;crop=&amp;bg=",
  location_id: loc10.id
})

event14 = Event.create({
  name: "Titanic: The Exhibition",
  date: Date.today + 9.days,
  cost: 42,
  description: "In Sydney for the first time ever, journey into the heart of the Titanic and experience the world’s largest and most comprehensive exhibition about this iconic ship. Immerse yourself in the moving tale of Titanic’s first and final voyage and experience the sights, sounds and stories as if you were on the ship.",
  image: "https://images.unsplash.com/photo-1466147105426-04f2362f932b?dpr=1&amp;auto=format&amp;fit=crop&amp;w=1500&amp;h=1000&amp;q=80&amp;cs=tinysrgb&amp;crop=&amp;bg=",
  location_id: loc11.id
})

event15 = Event.create({
  name: "The Ham Funeral",
  date: Date.today + 7.days,
  cost: 120,
  description: "An unnervingly dark and vulgar investigation of the human condition.",
  image: "https://images.unsplash.com/photo-1432835305417-6919779246b4?dpr=2&auto=format&fit=crop&w=1199&h=899&q=80&cs=tinysrgb&crop=&bg=",
  location_id: loc12.id
})

event16 = Event.create({
  name: "Pyrmont Festival",
  date: Date.today + 8.days,
  cost: 10,
  description: "Two-week festival celebrating the best of Pyrmont and the Mudgee region",
  image: "https://images.unsplash.com/photo-1485095329183-d0797cdc5676?dpr=1&amp;auto=format&amp;fit=crop&amp;w=1500&amp;h=1000&amp;q=80&amp;cs=tinysrgb&amp;crop=&amp;bg=",
  location_id: loc2.id
})

event17 = Event.create({
  name: "American Essentials Film Festival",
  date: Date.today + 40.days,
  cost: 142,
  description: "Best showcase of independent cinema from the States in Australia!!",
  image: "https://images.unsplash.com/photo-1483081979849-4367277fb4d8?dpr=1&amp;auto=format&amp;fit=crop&amp;w=1500&amp;h=1000&amp;q=80&amp;cs=tinysrgb&amp;crop=&amp;bg=",
  location_id: loc20.id
})

event18 = Event.create({
  name: "Market Crawl by Bike",
  date: Date.today + 32.days,
  cost: 30,
  description: "Discover how easy it is to get to Sydney’s best markets by bike and do a spot of local shopping on the way.",
  image: "https://images.unsplash.com/photo-1438183972690-6d4658e3290e?dpr=1&amp;auto=format&amp;fit=crop&amp;w=1500&amp;h=1125&amp;q=80&amp;cs=tinysrgb&amp;crop=&amp;bg=",
  location_id: loc2.id
})



# User's IP address: 124.149.120.64

User.destroy_all

user1 = User.create({
  first_name: "Simone",
  last_name: "Italiano",
  dob: Date.today,
  email: "simone@ga.co",
  phone_number: "0406 447 446",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user2 = User.create({
  first_name: "Luke",
  last_name: "Panda",
  dob: Date.today,
  email: "luke@ga.co",
  phone_number: "0406 447 221",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user3 = User.create({
  first_name: "Phil",
  last_name: "One Tree",
  dob: Date.today,
  email: "phil@ga.co",
  phone_number: "0406 447 009",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user4 = User.create({
  first_name: "Bob",
  last_name: "Smith",
  dob: Date.today,
  email: "bobs@gmail.com",
  phone_number: "0406 447 009",
  is_admin: false,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user5 = User.create({
  first_name: "Dana",
  last_name: "Oliver",
  dob: Date.today,
  email: "dana@ga.co",
  phone_number: "0413 547 446",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user6 = User.create({
  first_name: "Misty",
  last_name: "Bryan",
  dob: Date.today,
  email: "misty@ga.co",
  phone_number: "0410 647 446",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user7 = User.create({
  first_name: "Rochelle",
  last_name: "French",
  dob: Date.today,
  email: "rochelle@ga.co",
  phone_number: "0411 147 446",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user8 = User.create({
  first_name: "Kerry",
  last_name: "Harrington",
  dob: Date.today,
  email: "kerry@ga.co",
  phone_number: "0426 547 446",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user9 = User.create({
  first_name: "Terence",
  last_name: "Kelley",
  dob: Date.today,
  email: "terence@ga.co",
  phone_number: "0483 517 446",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user10 = User.create({
  first_name: "Cecilia",
  last_name: "Stanley",
  dob: Date.today,
  email: "cecilia@ga.co",
  phone_number: "0438 947 146",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user11 = User.create({
  first_name: "Adrian",
  last_name: "Arnold",
  dob: Date.today,
  email: "adrian@ga.co",
  phone_number: "0423 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user12 = User.create({
  first_name: "Edward",
  last_name: "Collins",
  dob: Date.today,
  email: "edward@ga.co",
  phone_number: "0443 747 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user13 = User.create({
  first_name: "Ramiro",
  last_name: "Paul",
  dob: Date.today,
  email: "ramiro@ga.co",
  phone_number: "0453 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user14 = User.create({
  first_name: "Shelley",
  last_name: "Mendoza",
  dob: Date.today,
  email: "shelley@ga.co",
  phone_number: "0433 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user15 = User.create({
  first_name: "Victoria",
  last_name: "McCormack",
  dob: Date.today,
  email: "victoria@ga.co",
  phone_number: "0453 647 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user16 = User.create({
  first_name: "Lee",
  last_name: "Warner",
  dob: Date.today,
  email: "lee@ga.co",
  phone_number: "0422 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user17 = User.create({
  first_name: "Alicia",
  last_name: "Jensen",
  dob: Date.today,
  email: "alicia@ga.co",
  phone_number: "0455 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user18 = User.create({
  first_name: "Jared",
  last_name: "Stokes",
  dob: Date.today,
  email: "jared@ga.co",
  phone_number: "0444 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user19 = User.create({
  first_name: "Sammy",
  last_name: "Rhodes",
  dob: Date.today,
  email: "alicia@ga.co",
  phone_number: "0499 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
})

user20 = User.create({
  first_name: "Doug",
  last_name: "Long",
  dob: Date.today,
  email: "alicia@ga.co",
  phone_number: "0488 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken",
  ip_address: "202.171.181.44"
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


EventTypesEvent.destroy_all

event_types_events1 = EventTypesEvent.create({
event_type_id: type5.id,
event_id: event18.id
})

event_types_events2 = EventTypesEvent.create({
event_type_id: type3.id,
event_id: event17.id
})

event_types_event3 = EventTypesEvent.create({
event_type_id: type9.id,
event_id: event16.id
})

event_types_event4 = EventTypesEvent.create({
event_type_id: type8.id,
event_id: event15.id
})

event_types_events5 = EventTypesEvent.create({
event_type_id: type8.id,
event_id: event14.id
})

event_types_events6 = EventTypesEvent.create({
event_type_id: type2.id,
event_id: event13.id
})

event_types_events7 = EventTypesEvent.create({
event_type_id: type1.id,
event_id: event12.id
})

event_types_events8 = EventTypesEvent.create({
event_type_id: type5.id,
event_id: event11.id
})

event_types_events9 = EventTypesEvent.create({
event_type_id: type4.id,
event_id: event10.id
})

event_types_events10 = EventTypesEvent.create({
event_type_id: type9.id,
event_id: event9.id
})

event_types_events11 = EventTypesEvent.create({
event_type_id: type8.id,
event_id: event8.id
})

event_types_events12 = EventTypesEvent.create({
event_type_id: type5.id,
event_id: event7.id
})

event_types_events13 = EventTypesEvent.create({
event_type_id: type2.id,
event_id: event6.id
})

event_types_events14 = EventTypesEvent.create({
event_type_id: type9.id,
event_id: event5.id
})

event_types_events15 = EventTypesEvent.create({
event_type_id: type9.id,
event_id: event4.id
})

event_types_events16 = EventTypesEvent.create({
event_type_id: type5.id,
event_id: event3.id
})

event_types_events17 = EventTypesEvent.create({
event_type_id: type5.id,
event_id: event2.id
})

event_types_events18 = EventTypesEvent.create({
event_type_id: type4.id,
event_id: event1.id
})






# TESTING ASSOCIATIONS
puts event1.location.state
puts loc1.events.count

puts event1.event_types.first
puts type4.events.first

puts user1.events.first
puts event2.users.first
