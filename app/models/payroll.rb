class Payroll < ActiveRecord::Base
	has_many :payroll_datums
	has_many :employees, through: :payroll_datums

	accepts_nested_attributes_for :payroll_datums, allow_destroy: true
end
