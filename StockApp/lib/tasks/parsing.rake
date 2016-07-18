task :import => :environment do 

require 'csv'

CSV.foreach('db/data/NASDAQ.csv', encoding: "iso-8859-1:UTF-8" ) do |row|
	Company.create ({
		:name => row["name"], 
		:symbol => row["symbol"]
		})
end 

end 
