# code here!
require 'pry'
class School
  attr_accessor :name, :age
  def initialize(name)
    @name = name
    @age = age
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    # binding.pry
    if !@roster.has_key?(grade)    # => check if the student's grade already exit in the {}.
      @roster[grade] = [student]   # => {10=>["AC Slater"]}
    else
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    # binding.pry
    @roster.sort.values.sort to_h


  end

end
