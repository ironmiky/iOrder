class Order < ActiveRecord::Base
  belongs_to :table
  has_many :ordered_product
end
