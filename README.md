# README

This app is a practise for Udemy course "REST API with Ruby on Rails: The Complete Guide"

* `Start new rails app`
  * $ rails new api -T --api
    * -T / without test folder
    *  --api / create api on the app
    * -d postgresql / use postgresql as a database

* `Add rspec and factory_bot`
  * https://github.com/rspec/rspec-rails/tree/5-1-maintenance
  * https://github.com/thoughtbot/factory_bot_rails 

* `Add articles object`
  * $ rails g model article title content:text slug
  * $ rails db:migrate

* `Add serializer gem`
  * https://github.com/jsonapi-serializer/jsonapi-serializer 

* `Add jsom-pagination gem`
  * https://github.com/useo-pl/jsom-pagination 

* `Add jsonapi_errors_handler gem`
  * https://github.com/driggl/jsonapi_errors_handler 
  

* `Notes`
  * $ rails routes | grep articles  --SAME AS--  rails routes -g articles
  * "pp body" before expectation in the test -> prints the body in better format