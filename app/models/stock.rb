class Stock < ApplicationRecord
  # Stocks belong to one user
  belongs_to :user
end
