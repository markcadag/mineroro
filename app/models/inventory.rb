class Inventory < ActiveRecord::Base
	self.per_page = 10
	belongs_to :item
	belongs_to :in_category
end
