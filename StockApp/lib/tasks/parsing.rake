task :import => :environment do 

require 'csv'

CSV.foreach('db/data/NASDAQ.csv', :headers => true, encoding: "iso-8859-1:UTF-8" ) do |row|
	Company.create ({
		:name => row["Name"], 
		:symbol => row["Symbol"]
		})
end 

CSV.foreach('db/data/AMEX.csv', :headers => true, encoding: "iso-8859-1:UTF-8" ) do |row|
	Company.create ({
		:name => row["Name"], 
		:symbol => row["Symbol"]
		})
end 

CSV.foreach('db/data/NYSE.csv', :headers => true, encoding: "iso-8859-1:UTF-8" ) do |row|
	Company.create ({
		:name => row["Name"], 
		:symbol => row["Symbol"]
		})
end 

	
end 
