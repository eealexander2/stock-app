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
    @stock = StockQuote::Stock.history(company.symbol, (Date.today - 42), Date.today)
    data_points = Company.graph_data(@stock)
    @labels = Company.x_axis(data_points)
    @data = Company.y_axis(data_points)
    @company = company.name 
  end 
 
end 