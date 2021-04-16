class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_258efef5f099409aa33aef9fd3c56cd6')

    if params[:ticker] == ''
      @empty = 'Please enter a symbol!'
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      if !@stock
          @error = 'Stock symbol doesnt exist!'
      end
    end
  end

  def about
  end
end
