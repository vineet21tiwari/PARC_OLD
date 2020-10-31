# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby on rails installation with aptana studio:
  => Before installing please check versions of softwares of this application from Gemfile
  => You can refer this video - https://www.youtube.com/watch?v=bNMLGj6IB2c&t=193s
  => No need to install wamp or any server as Ruby on Rails has its own server.

* Clone respected git repository (you can refer this-> https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/cloning-a-repository)
* Install all dependencies (run "bundle install" in cmd)
* Create db and migrate schema by using following command
  rake db:create
  rake db:migrate
* Now run your application by using following command
  rails s (start server)

* Application flow:
	=> It follows MVC architecture.
		Models- for handling data and business logic
		Controllers-  for handling the user interface and application
		Views-  for handling graphical user interface objects and presentation
		
	=> This separation results in user requests being processed as follows:

		1. The browser (on the client) sends a request for a page to the controller on the server.
		2. The controller retrieves the data it needs from the model in order to respond to the request.
		3. The controller gives the retrieved data to the view.
		4. The view is rendered and sent back to the client for the browser to display.
	=> For more details you can refer https://www.sitepoint.com/model-view-controller-mvc-architecture-rails/
	
* General Commands:
	1. To create new rails application	: rails new <projectname>
	2. To create controller				: rails generate controller <controller_name>
	   (It automatically update controller as well as view folder)	
	3. To create Database table, we need to create migration file first and then run this migration file
		3.1	Create Migration file	: rails generate migration create_<table_name> // note: make table name as plural
		3.2 Open this migration file (db->migration->migration file) and add column details
		3.3 Run migration file		: rails db:migrate
		
		To add validations for created table, we need to create model file :<table_name>.rb file (table name should be singular)
		Goto app->models->newfile-> create new file here with .rb extension
		Note: Every model file we created,inherits from ApplicationRecord
	4. To interact with database by	model file, we required a tool called rails console.
		Command-->
		START :  rails console or rails c
		END	  :  exit
	5. For any modification in database we need to create migration file and then run the same
		for eg. To add column
		# rails generate migration add_<column_name>_to_<table_name>
		# Go to that migration file	
		# In 'change' function write:
		  add_column :<table_name>, :<column_name>, :<datatype_of_new_column>
		# After modifying migration file, run this migration file to finally add this column to table.
		
* To commit your work in github
	commands
	-> git add -A
	-> git status
	-> git commit -m "<message you want to display>" 
	-> git push origin main
