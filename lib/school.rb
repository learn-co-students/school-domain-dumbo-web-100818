class School
  attr_reader :roster
  attr_accessor :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if !@roster.has_key? (grade)
      @roster[grade]=[]
    end
    @roster[grade]<<student
    @roster[grade]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_list = {}
    @roster.each do |grade, student_list|
      sorted_list[grade]=student_list.sort
    end
    sorted_list
  end

end
