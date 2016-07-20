require 'csv'

class Company < ActiveRecord::Base

	def self.search(prefix)
		@found_companies = [] 
	  @found_companies << where("name ILIKE ?", "#{prefix}%").order('name ASC')
	  @found_companies << where("symbol ILIKE ?", "#{prefix}%").order('name ASC')
	  return @found_companies
	end

end 