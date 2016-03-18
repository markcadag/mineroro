class Expense < ActiveRecord::Base

	before_save :total_amount 

	belongs_to :user
	belongs_to :mine
	validates	:name,          :presence => true
	validates	:amount,        :presence => true 
	validates	:quantity,      :presence => true
	validates	:unit,   	   :presence => true
	validates	:category,   	:presence => true
	validates	:description,  :presence => true

	has_many :request
  	has_many :mines, :through => :request

  	has_many :tunnel_expenses, dependent: :destroy
  	 # accepts_nested_attributes_for :drinks, :allow_destroy => true
  	has_many :tunnels, :through => :tunnel_expenses


  	def total_amount
    	self.total = self.amount.to_s.to_f * self.quantity.to_s.to_f
  	end 
end
