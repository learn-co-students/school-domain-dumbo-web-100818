require 'pry'

class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if @roster[student_grade] == nil
      @roster[student_grade] = []
    end
    @roster[student_grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end
end
