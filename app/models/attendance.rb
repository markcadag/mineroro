class Attendance < ActiveRecord::Base
  	
	has_many :check_attendance
	has_many :miners, :through => :check_attendance
	
	def self.update_or_create(attributes)
	  	assign_or_new(attributes).save
	end

	def self.assign_or_new(attributes)
		obj = first || new
		obj.assign_attributes(attributes)
		obj
	end

end
