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
    @roster.each { |k, v| v.sort!}
  end

end
#@roster.keys.sort #=> [7, 9, 10]
# @roster.each do |x, y|
#   y.sort!
# expected: {7=>["Blake Johnson", "Jack Bauer"], 9=>["Bart Simpson", "Homer Simpson"], 10=>["Avi Flombaum", "Jeff Baird"]}
#      got: {7=>["Blake Johnson", "Jack Bauer"], 9=>["Homer Simpson", "Bart Simpson"], 10=>["Avi Flombaum", "Jeff Baird"]}
