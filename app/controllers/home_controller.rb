class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_258efef5f099409aa33aef9fd3c56cd6')

    # Check if user input is empty
    if params[:symbol] == ''
      @empty = 'Please enter a symbol!'
    elsif params[:symbol]
      # Pass user input into stocks api and store results
      @stock = StockQuote::Stock.quote(params[:symbol])

      # If stock value doesn't exist then return error
      @error = 'Stock symbol doesnt exist!' unless @stock
    end
  end

  def about; end
end
