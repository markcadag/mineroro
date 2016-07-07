class Item < ActiveRecord::Base
  belongs_to :mine
  has_one :inventory

  # before_create :generate_token
  self.per_page = 10

  # protected

  # def generate_token
  #   self.item_code = loop do
  #     random_token = SecureRandom.urlsafe_base64(nil, false).upcase
  #     break random_token unless Item.exists?(item_code: random_token)
  #   end
  # end

end
