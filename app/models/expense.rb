class Expense < ActiveRecord::Base
	belongs_to :user
	belongs_to :mine
	validates	:name,          :presence => true
	validates	:amount,        :presence => true 
	validates	:quantity,      :presence => true
	validates	:unit,   	   :presence => true
	validates	:category,   	   :presence => true
	validates	:description,  :presence => true
end
