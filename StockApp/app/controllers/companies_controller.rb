class CompaniesController < ApplicationController
  include ApplicationHelper

  def search 

  end 

  def index
    if params[:search]
      prefix = params[:search][0,3]
      @found_companies = Company.search(prefix).flatten.sort.uniq[0...20]
    else
      @found_companies = Company.all.order('name ASC')
    end
  end

  def show
    company = Company.find(params[:id])
    @stock = StockQuote::Stock.history(company.symbol, (Date.today - 42), Date.today)
    data_points = company.graph_data(@stock)
    @labels = company.x_axis(data_points)
    @data = company.y_axis(data_points)
    @company_name = company.name 
  end 
 
end 