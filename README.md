# Stock Market Application

This application allows users to search for and view a company's stock price history. The application runs on Ruby on Rails (v. 4.2.6) and uses a Postgres database. To run this application, make sure this version of Rails is installed and Postgres is running and listening on port 5432. You can learn more about installing and updating Rails in the [documentation](http://www.tutorialspoint.com/ruby-on-rails/rails-installation.htm). Further instructions on setting up Postgres can be located [here](http://www.tutorialspoint.com/postgresql/postgresql_environment.htm). 

Once your environment is configured (or if it already is) , follow these steps:   

1. Clone the repo

  ```
  $ git clone https://github.com/eealexander2/stock-app.git
  ```
2. Change into StockApp directory 

  ```
  $ cd stock-app/StockApp/
  ```
3. Run 'bundle install'
  
  ```
  $ bundle install
  ```
4. Create the database 

  ```
  $ bundle exec rake db:create
  ```
5. Migrate to create tables 

  ```
  $ bundle exec rake db:migrate 
  ```
6. Import CSV data 

  ```
  $ bundle exec rake import
  ```
7. Start the server

  ``` 
  $ rails s
  ```
8. Finally, visit http://localhost:3000 in your browser to view the application. 


Thank you! Feel free to drop me a line if you run into any issues. My email is eealexander2@gmail.com 
