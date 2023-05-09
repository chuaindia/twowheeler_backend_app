# README

This twowheeler_backend_app uses Ruby on Rails as backend. The frontend will be written in a separate app which will be written in React.

The processes used here:

* rails new twowheeler_backend_app --database=postgresql --api

* rails g scaffold User name:string

* rails g scaffold Twowheeler name:string description:text image_url:string price:decimal model_year:integer engine_type:string  
  fuel_type:string

* rails g scaffold Reservation city:string duration_of_test_drive:integer date_of_reservation:date

* Wagger is a popular tool used to generate API documentation. Here are the steps to generate API documentation using Swagger:

   - Install the Swagger gem: gem 'swagger-ui_rails'

* Write date in seeds.rb file.
* Write swagger.yaml.
* Write db,models.
* Controllers should be written within api/v1.
* Include rswag_api.rb and rswag_ui.rb within config/initializers.
* run rails db:create, rails db: migrate, rails db:seed.
* run rails s.
* In the server within api/v1/twowheelers all the data will appear.
* Reservation by a particular user can also be retrieved.
