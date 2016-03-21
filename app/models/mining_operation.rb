class MiningOperation < ActiveRecord::Base
  
  has_many :mining_operation_cost
  has_many :expenses, :through => :mining_operation_cost  

  def self.today
    where("created_at >= ?", Time.zone.now.beginning_of_day)
  end
  
end
