class ExpenseSubType < ActiveRecord::Base
  belongs_to :expense_type
  before_create :generate_token
  self.per_page = 10
  validates	:expense_type,  :presence => true

  def generate_token
    self.expense_sub_type_code = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false).upcase
      break random_token unless ExpenseSubType.exists?(expense_sub_type_code: random_token)
    end
  end

end
