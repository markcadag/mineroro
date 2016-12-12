class PayrollDatum < ActiveRecord::Base
  belongs_to :employee
  belongs_to :payroll

end
