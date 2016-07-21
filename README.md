# stock-app
If you would like to run this application on your local machine, follow the steps below: 

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
