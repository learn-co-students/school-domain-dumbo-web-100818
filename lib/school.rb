class School
	def initialize(name)
		@roster = {}
		@school_name = name
	end

	def add_student(name, grade)
		if @roster.key?(grade)
			@roster[grade].push(name)
		else
			@roster[grade] = [name]
		end
	end

	def grade(num_grade)
		@roster[num_grade]
	end

	def sort
		@roster.keys.each {|key| @roster[key] = @roster[key].sort}
		return @roster
	end

	def roster
  		@roster
	end
end