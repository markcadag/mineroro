class Tunnel < ActiveRecord::Base
  belongs_to :mine
  belongs_to :expense
  has_many :miners

  has_many :tunnel_expenses
  has_many :expenses, :through => :tunnel_expenses

end
