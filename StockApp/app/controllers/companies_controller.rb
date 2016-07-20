class CompaniesController < ApplicationController
  include ApplicationHelper

	def search 
 	 
	end 

	def index
  	@companies = Company.all
  	if params[:search]
  		prefix = params[:search][0,3]
    	@companies = Company.search(prefix)
			@found_companies = @companies.flatten[0..20]
  	else
    	@companies = Company.all.order('name ASC')
  	end
	end

	def show
		company = Company.find(params[:id])
		stock = StockQuote::Stock.history( company.symbol, (Date.today - 42), Date.today)
		@plotting_points = []
		stock.each do |share|
			y_value = (((share.open) + (share.low) + (share.close) + (share.high))/4) 
			@plotting_points << [share.date, y_value]
		end
			
		labels = [] 
		@plotting_points.each do |share|
			labels << share[0]
		end 	

		data = []
		@plotting_points.each do |share|
			data << share[1]		
		end 	
		
		@labels = labels.reverse.to_json
		@data = data.reverse.to_json 
		@company = company.name 
	end 

end 