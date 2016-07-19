require 'csv'

class Company < ActiveRecord::Base

def self.search(search)
  where("name ILIKE ?", "%#{search}%")
  where("symbol ILIKE ?", "%#{search}%")
end


end 