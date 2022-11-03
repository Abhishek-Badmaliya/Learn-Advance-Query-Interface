class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :product
  enum :order_status, %i[booked cancelled]
end
