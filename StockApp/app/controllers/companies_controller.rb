class CompaniesController < ApplicationController
  include ApplicationHelper

 def search 
 	 
 end 

def index
  @companies = Company.all
  if params[:search]
    @companies = Company.search(params[:search]).order("created_at DESC")
  else
    @companies = Company.all.order('created_at DESC')
  end


end


end 