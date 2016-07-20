require 'csv'
class Company < ActiveRecord::Base

	def self.search(prefix)
		@found_companies = [] 
	  @found_companies << where("name ILIKE ?", "#{prefix}%").order('name ASC')
	  @found_companies << where("symbol ILIKE ?", "#{prefix}%").order('name ASC')
    @found_companies
	end

	def self.graph_data(stock)
		data_points = []
		stock.each do |share|
			y_value = (((share.open) + (share.low) + (share.close) + (share.high))/4) 
			data_points << [share.date, y_value]
		end	
		data_points
	end 

	def self.x_axis(data_points)
		labels = [] 
		data_points.each do |point|
			labels << point[0]
		end 
		labels.reverse.to_json	
	end 

	def self.y_axis(data_points)
		data = []
		data_points.each do |point|
			data << point[1]		
		end 	
		data.reverse.to_json
	end 

end 