class Payroll < ActiveRecord::Base
	
	enum payroll_type: {staff_personnel: 1, plant_workers: 2 , km_15: 3, plant_utility: 4, plant: 5, office_personnel: 6, security: 7  }

	has_many :payroll_datums
	has_many :employees, through: :payroll_datums

	accepts_nested_attributes_for :payroll_datums, allow_destroy: true

end
