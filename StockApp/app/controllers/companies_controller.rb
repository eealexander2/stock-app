class CompaniesController < ApplicationController
  include ApplicationHelper

  def search 

  end 

  def index
    if params[:search]
      prefix = params[:search][0,3]
      @found_companies = Company.search(prefix).flatten.sort.uniq[0...20]
      @message = ""
    else
      @found_companies = Company.all.order('name ASC')
      @message = params[:message]
    end
  end

  def show
    company = Company.find(params[:id]) 
    @stock = StockQuote::Stock.history(company.symbol, (Date.today - 42), Date.today)
    if @stock.respond_to?(:length)
      data_points = company.graph_data(@stock)
      @labels = company.x_axis(data_points)
      @data = company.y_axis(data_points)
      @company_name = company.name 
    else
      redirect_to companies_path(:message => "Oops! We're sorry, but we couldn't find the data you were looking for.")
    end 
  end 
 
end 