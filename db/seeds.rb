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
  name: "GA BootCamp",
  date: Date.today,
  cost: 100,
  description: "The GA Code Bootcamp",
  image: "https://unsplash.com/search/digital?photo=j4uuKnN43_M",
  location_id: loc1.id
})

event2 = Event.create({
  name: "Ice Skating",
  date: Date.today,
  cost: 20,
  description: "Learn to Iceskate",
  image: "https://unsplash.com/search/ice-skating?photo=pV9_u0zDk4E",
  location_id: loc1.id
})

event3 = Event.create({
  name: "Bridge Climbing",
  date: Date.today,
  cost: 120,
  description: "Climb on the iconic Harbour Bridge!",
  image: "https://unsplash.com/search/sydney-harbour-bridge?photo=_Ehklh_8z9s",
  location_id: loc2.id
})

event4 = Event.create({
  name: "VIVID Sydney",
  date: Date.today,
  cost: 89,
  description: "Vivid Sydney is back to light up our city from 26 May to 17 June!",
  image: "https://unsplash.com/search/light-show?photo=h7l0D5An8II",
  location_id: loc6.id
})

event5 = Event.create({
  name: "Evolving a Tasty Niche",
  date: Date.today,
  cost: 120,
  description: "Evolving a Tasty Niche is in response to the global phenomenon of creative food careers, from food photography, cake design, dining, to food art, fueled by the power of social media. It is a world injected with robust, novel energy everyday. Today’s niche easily becomes tomorrow’s cliché.",
  image: "https://unsplash.com/collections/370149/taste",
  location_id: loc8.id
})

event6 = Event.create({
  name: "Rock 'n' Roll & Alternative Market",
  date: Date.today + 1.days,
  cost: 90,
  description: "A one-off line-up of Sydney bands for an inner-west music and shopping extravaganza.",
  image: "https://unsplash.com/search/music?photo=ekQ62fABSV4",
  location_id: loc19.id
})

event7 = Event.create({
  name: "Brewhouse Shala yoga",
  date: Date.today + 2.days,
  cost: 25,
  description: "For a cost of $25, you’ll be able to enjoy a 60 minute yoga class, followed by a half pint of your favourite craft beer from the guys at Rocks Brewing.",
  image: "https://unsplash.com/search/yoga?photo=hOj3-0lTK8E",
  location_id: loc3.id
})

event8 = Event.create({
  name: "Museum of Sydney scavenger hunt",
  date: Date.today + 3.days,
  cost: 40,
  description: "Add a of spice to your visit to this fantastic Museum and challenge yourself in this short and quirky trail!",
  image: "https://unsplash.com/search/hunt?photo=Hec0skqVccQ",
  location_id: loc4.id
})

event9 = Event.create({
  name: "World Whisky Dinner at Osaka Trading Co.",
  date: Date.today  + 4.days,
  cost: 180,
  description: "Join us for the World Whisky Dinner at Osaka Trading Co., located at Tramsheds Harold Park.",
  image: "https://unsplash.com/search/dinner?photo=QlnUpMED6Qs",
  location_id: loc6.id
})

event10 = Event.create({
  name: "Oztronomy: Ed Hurst",
  date: Date.today + 5.days,
  cost: 65,
  description: "Captivated with a whole new way of seeing the world through a lens! ArtSHINE Gallery is working with Head on Photo Festival, the largest festival in Sydney for photography!",
  image: "https://unsplash.com/search/astronomy?photo=mwWJul4WkqU",
  location_id: loc7.id
})

event11 = Event.create({
  name: "Group fitness in Alexandria Park",
  date: Date.today  + 6.days,
  cost: 45,
  description: "Get results and get sweaty. High-intensity cardio and functional training to burn body fat and boost your fitness.",
  image: "https://unsplash.com/search/photos/fitness?photo=lrjhGUSESGk",
  location_id: loc8.id
})

event12 = Event.create({
  name: "Comedy On Edge",
  date: Date.today + 7.days,
  cost: 55,
  description: "Sydney's hottest comedy venue!",
  image: "https://unsplash.com/search/live?photo=VlxZ6nx16HE",
  location_id: loc9.id
})

event13 = Event.create({
  name: "Darbuka drumming classes",
  date: Date.today + 8.days,
  cost: 42,
  description: "Learn the instrument with a talented teacher in a relaxed environment",
  image: "https://unsplash.com/search/drum?photo=vOBnbyzA_XA",
  location_id: loc10.id
})

event14 = Event.create({
  name: "Titanic the Exhibition",
  date: Date.today + 9.days,
  cost: 42,
  description: "In Sydney for the first time ever. Journey into the heart of the Titanic and experience the world’s largest and most comprehensive exhibition about this iconic ship. Immerse yourself in the moving tale of Titanic’s first and final voyage and experience the sights, sounds and stories as if you were on the ship.",
  image: "https://unsplash.com/search/ship?photo=4y4pTj-9phI",
  location_id: loc11.id
})

event15 = Event.create({
  name: "The Ham Funeral",
  date: Date.today + 7.days,
  cost: 120,
  description: "An unnervingly dark and vulgar investigation of the human condition.",
  image: "https://unsplash.com/search/gallery?photo=xJXxMR5PXoY",
  location_id: loc12.id
})

event16 = Event.create({
  name: "Pyrmont Festival",
  date: Date.today + 8.days,
  cost: 10,
  description: "Two-week festival celebrating the best of Pyrmont and the Mudgee region",
  image: "https://unsplash.com/collections/542704/camping-and-festivals?photo=S_VbdMTsdiA",
  location_id: loc2.id
})

event17 = Event.create({
  name: "American Essentials Film Festival",
  date: Date.today,
  cost: 142,
  description: "Best showcase of independent cinema from the States in Australia!!",
  image: "https://unsplash.com/collections/781962/mystate-film-fest?photo=IpLa37Uj2Dw",
  location_id: loc20.id
})

event18 = Event.create({
  name: "Market Crawl by Bike",
  date: Date.today,
  cost: 30,
  description: "Discover how easy it is to get to Sydney’s best markets by bike and do a spot of local shopping on the way.",
  image: "https://unsplash.com/search/bike-ride?photo=v0TfIt-S6-o",
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

user5 = User.create({
  first_name: "Dana",
  last_name: "Oliver",
  dob: Date.today,
  email: "dana@ga.co",
  phone_number: "0413 547 446",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user6 = User.create({
  first_name: "Misty",
  last_name: "Bryan",
  dob: Date.today,
  email: "misty@ga.co",
  phone_number: "0410 647 446",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user7 = User.create({
  first_name: "Rochelle",
  last_name: "French",
  dob: Date.today,
  email: "rochelle@ga.co",
  phone_number: "0411 147 446",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user8 = User.create({
  first_name: "Kerry",
  last_name: "Harrington",
  dob: Date.today,
  email: "kerry@ga.co",
  phone_number: "0426 547 446",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user9 = User.create({
  first_name: "Terence",
  last_name: "Kelley",
  dob: Date.today,
  email: "terence@ga.co",
  phone_number: "0483 517 446",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user10 = User.create({
  first_name: "Cecilia",
  last_name: "Stanley",
  dob: Date.today,
  email: "cecilia@ga.co",
  phone_number: "0438 947 146",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user11 = User.create({
  first_name: "Adrian",
  last_name: "Arnold",
  dob: Date.today,
  email: "adrian@ga.co",
  phone_number: "0423 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user12 = User.create({
  first_name: "Edward",
  last_name: "Collins",
  dob: Date.today,
  email: "edward@ga.co",
  phone_number: "0443 747 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user13 = User.create({
  first_name: "Ramiro",
  last_name: "Paul",
  dob: Date.today,
  email: "ramiro@ga.co",
  phone_number: "0453 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user14 = User.create({
  first_name: "Shelley",
  last_name: "Mendoza",
  dob: Date.today,
  email: "shelley@ga.co",
  phone_number: "0433 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user15 = User.create({
  first_name: "Victoria",
  last_name: "McCormack",
  dob: Date.today,
  email: "victoria@ga.co",
  phone_number: "0453 647 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user16 = User.create({
  first_name: "Lee",
  last_name: "Warner",
  dob: Date.today,
  email: "lee@ga.co",
  phone_number: "0422 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user17 = User.create({
  first_name: "Alicia",
  last_name: "Jensen",
  dob: Date.today,
  email: "alicia@ga.co",
  phone_number: "0455 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user18 = User.create({
  first_name: "Jared",
  last_name: "Stokes",
  dob: Date.today,
  email: "jared@ga.co",
  phone_number: "0444 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user19 = User.create({
  first_name: "Sammy",
  last_name: "Rhodes",
  dob: Date.today,
  email: "alicia@ga.co",
  phone_number: "0499 247 226",
  is_admin: true,
  password: "chicken",
  password_confirmation: "chicken"
})

user20 = User.create({
  first_name: "Doug",
  last_name: "Long",
  dob: Date.today,
  email: "alicia@ga.co",
  phone_number: "0488 247 226",
  is_admin: true,
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


EventTypesEvent.destroy_all

event_types_events1 = EventTypesEvents.create({
event_type_id: type1.id,
event_id: event18.id
})

event_types_events2 = EventTypesEvents.create({
event_type_id: type2.id,
event_id: event17.id
})

event_types_event3 = EventTypesEvents.create({
event_type_id: type3.id,
event_id: event16.id
})

event_types_event4 = EventTypesEvents.create({
event_type_id: type4.id,
event_id: event15.id
})

event_types_events5 = EventTypesEvents.create({
event_type_id: type5.id,
event_id: event14.id
})

event_types_events6 = EventTypesEvents.create({
event_type_id: type5.id,
event_id: event13.id
})

event_types_events7 = EventTypesEvents.create({
event_type_id: type6.id,
event_id: event12.id
})

event_types_events8 = EventTypesEvents.create({
event_type_id: type7.id,
event_id: event11.id
})

event_types_events9 = EventTypesEvents.create({
event_type_id: type8.id,
event_id: event10.id
})

event_types_events10 = EventTypesEvents.create({
event_type_id: type9.id,
event_id: event9.id
})

event_types_events11 = EventTypesEvents.create({
event_type_id: type10.id,
event_id: event8.id
})

event_types_events12 = EventTypesEvents.create({
event_type_id: type1.id,
event_id: event7.id
})

event_types_events13 = EventTypesEvents.create({
event_type_id: type2.id,
event_id: event6.id
})

event_types_events14 = EventTypesEvents.create({
event_type_id: type3.id,
event_id: event5.id
})

event_types_events15 = EventTypesEvents.create({
event_type_id: type4.id,
event_id: event4.id
})

event_types_events16 = EventTypesEvents.create({
event_type_id: type5.id,
event_id: event3.id
})

event_types_events17 = EventTypesEvents.create({
event_type_id: type6.id,
event_id: event2.id
})

event_types_events18 = EventTypesEvents.create({
event_type_id: type7.id,
event_id: event1.id
})






# TESTING ASSOCIATIONS
puts event1.location.state
puts loc1.events.count

puts event1.event_types.first
puts type4.events.first

puts user1.events.first
puts event2.users.first
