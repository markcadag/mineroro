class TunnelExpense < ActiveRecord::Base
  belongs_to :tunnel
  belongs_to :expense
end
