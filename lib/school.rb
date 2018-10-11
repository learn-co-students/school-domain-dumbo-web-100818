require 'pry'
class School
  attr_writer
  attr_accessor
  attr_reader :roster, :sort

  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student=(name, grade)
    @name = name
    @grade = grade
  end
  def add_student(name, grade)
    if !@roster[grade]
    @roster[grade] = []
    @roster[grade] << name
    else
    @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student_array|
      student_array.sort_by! do |student|
        student[0]
      end
    end
  end
end
