class Tunnel < ActiveRecord::Base
  belongs_to :mine
  has_many :miners
end
