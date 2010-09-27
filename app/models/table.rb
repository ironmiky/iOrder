class Table < ActiveRecord::Base
  belongs_to :pr
  has_many :orders
end
