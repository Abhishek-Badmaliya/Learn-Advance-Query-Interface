class Product < ApplicationRecord
  has_many :orders, dependent: :destroy
  enum :status, ['In Stock', 'Out of Stock', 'Coming Soon']
  default_scope { where(is_active: true) }
end
