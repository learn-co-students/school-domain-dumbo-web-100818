require 'pry'

class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  def roster
    @roster
  end
  def add_student(name, grade)
    @name = name
    @grade = grade
  @roster[@grade] ||= []
  @roster[@grade] =  @roster[@grade] << @name
  end

  def grade(grade)
  @roster[grade]
  end

  def sort
  #roster.sort_by {|k, v| k}.to_h
  roster.each do |x, y|
    y.sort!
end
end
end
