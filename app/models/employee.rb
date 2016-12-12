class Employee < ActiveRecord::Base
	
	enum employee_type: {staff_personnel: 1, plant_workers: 2 , km_15: 3, plant_utility: 4, plant: 5, office_personnel: 6, security: 7  }
	enum employee_status: { active: 0, inactive: 1 }

	has_many :payroll_datums
	has_many :payroll, through: :payroll_datums

end	
