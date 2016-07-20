require 'csv'

class Company < ActiveRecord::Base

	def self.search(prefix)
		@found_companies = []
	  @found_companies << Company.where("name ILIKE ?", "%#{prefix}%") 
	  @found_companies << Company.where("symbol ILIKE ?", "%#{prefix}%") 
	  @found_companies.flatten
	end

end 