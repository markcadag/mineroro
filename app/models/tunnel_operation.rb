class TunnelOperation < ActiveRecord::Base
  belongs_to :tunnel
  belongs_to :mine
end
