require 'pry'
class School
attr_reader :name, :roster, :student_name, :grade	
	def initialize(name)
		@name = name
		@roster = {}
	end
	def add_student(student_name, grade)
		@student_name = student_name
		@grade = grade
		@roster[grade] ||= []
		@roster[grade] << student_name
		#binding.pry
	end
	def grade(grade)
		@roster[grade]
	end
	def sort
		@roster = Hash[roster.sort_by {|grade, names| grade }]
		roster.each {|grade, names| @roster[grade] = names.sort}
		@roster
	end
end
