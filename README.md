# Evento - General Assembly Project 2

This application is a basic event booking application that supports standard CRUD (Create, Read, Update, Delete) operations using Ruby on Rails. This is my first major group project done for General Assembly with Phil and Simone. 

A user can search for events happening either today, in the next week or next month and also use th search functionality to lcoate events nearby. 


## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.


## Prerequisites
Ensure that you have the following installed on your local machine:

Ruby 	[Ruby](https://www.ruby-lang.org/en/documentation/installation/)
SQLite 	[SQLite](https://www.sqlite.org/index.html)
Rails 	[Rails](https://guides.rubyonrails.org/getting_started.html)


## Installation 
Clone the repo:

```
git clone https://github.com/lukemico/Project_02_Evento.git
cd Project_02_Evento
```

Install any dependancies

bcrypt
```
gem install bcrypt -v 3.1.11
```
geocoder
```
gem install geocoder
```

then follow instructions in the Running section.


## Steps to start server locally
To start the Rails server, run the following via the Command Line:

```
rails server
```

Open [http://localhost:3000](http://localhost:3000) and take a look around.


## Usage 


## Deployment
View the [Live Demo](https://evento-app.herokuapp.com/) here.


## Built With
[Ruby](https://www.ruby-lang.org/en/) - the scripting language used to handle data. 
[Ruby on Rails](https://guides.rubyonrails.org/index.html) - the web application development framework. 
[JavaScript](https://developer.mozilla.org/bm/docs/Web/JavaScript) - to handle the map data and the kendo widget (event date in create event). 
[HTML](https://www.w3.org/html/) - the framework that pulls together  
[Kendo](https://www.telerik.com/kendo-ui) - UI component library used for styling the framework.
[Bootstrap](https://getbootstrap.com/) - front-end framework to handle some User Inteface components.
[CSS](https://www.w3.org/Style/CSS/) - used to override some Bootstrap defaults. 

API's
[Google Maps](https://developers.google.com/maps/documentation/) - to handle map queries
[Cloudinary](https://cloudinary.com/documentation/admin_api) - to host images


## Features
* Event Search based on postcode
* Event search based on user current location
* Register to an event and see how many other users are currently registered
* Predefined collections of events based on event's date


## Known Bugs
* Nearme functionality will not work while not logged in
* Datepicker icons not showing on Heroku


## What's Next
* Extend research
* Social login & share
* Ratings
* Calendar
* validation


## Versioning
GitHub used for versioning. For the versions available, see the tags on this repository.


## Authors
Luke Mico


## License
n/a


## Acknowledgments
Heroku Devcenter [Heroku](https://devcenter.heroku.com/)




