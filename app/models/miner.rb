class Miner < ActiveRecord::Base
	belongs_to :mine
	has_one :tunnel
end
