class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_258efef5f099409aa33aef9fd3c56cd6')
  end

  def about
  end
end
