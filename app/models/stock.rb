class Stock < ApplicationRecord
  # Stocks belong to one user
  belongs_to :user
  # Symbol must be present in the field
  validates :symbol, presence: true
  # No white spaces
  validates :symbol, format: { without: /\s/ }
end
