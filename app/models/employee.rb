class Employee < ActiveRecord::Base
	
	enum employee_type: { miner: 0, staff_personnel: 1, plant_workers: 2 }
	enum employee_status: { active: 0, inactive: 1 }

	has_many :payroll_datums
	has_many :payroll, through: :payroll_datums

end	
