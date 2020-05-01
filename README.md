# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
-ruby '2.6.5'
-rails '5.2.4'
-gem '3.0.3'

* System dependencies
-rails
-ruby

* Configuration
- gem install rails -v 5.2.3
- mkdir programs_folder
- cd programs_folder
- rails new blog_app
- cd blog_app
- rails server

* Database creation
- rails generate scaffold car make:string model:string year:integer

* Database initialization
- rails db:migrate

* How to run the test suite
- rails server
- rails s

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
Git delopment
- git init
- git add .
- git commit -m "initial commit"
- git remote add origin <SSH URL from above>
- git push -u origin master

Heroku deploment
- heroku keys:add
- heroku create
- git remote
- To deploy a Rails application, we need to change some settings.

First, we need to open the Gemfile and edit it.

In your terminal, type ls and verify that you see Gemfile in the output. If you don’t see it, navigate to the directory you created in Steps 2.2 and 2.3.

Then, we’ll use VSCode to modify the Gemfile. Open your app in VSCode by typing code . (NOTE: The period at the end is important!) (WSL users: If you type code . and you see system32 in the top left, you have created your application outside of the Projects directory we created earlier.)

When VSCode opens, you should see a list of files on the left side of the screen. Click on Gemfile to open it in the editor. Then, delete the line that says,

gem 'sqlite3'
Replace the line you just deleted with the following:

group :development, :test do
 gem 'sqlite3'
end

group :production do
  gem 'pg'
end

- bundle install --without production
- Step 3.5.3: Configure the Root Route
The next thing we need to edit is the routes.rb file to set our root route. We’re going to do this so that we can see the application without having to append /cars at the end of the URL.

Go back to VSCode and expand the config folder in the file list at the left-hand side of the screen. One of the files inside the folder will be named routes.rb. Open routes.rb and make it match the example below:

Rails.application.routes.draw do
  root 'cars#index'
  resources :cars
end

- git status
- git add .
- git commit -m 'updates for heroku deployment'
- git push origin master
- git push heroku master
- heroku run rails db:migrate
- heroku open

* ...
