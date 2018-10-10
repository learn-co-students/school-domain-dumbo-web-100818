# code here!
require 'pry'
class School

  def initialize (school_name, roster = {})
    @name = school_name
    @roster = roster
  end
  attr_accessor :roster

  def add_student (student_name, grade)
    self.roster[grade] ||= []
    self.roster[grade] << student_name

  end

  def grade (grade)
    self.roster[grade]
  end

  def sort
    # binding.pry
    Hash[self.roster.sort]
    self.roster.each do |key, value|
      value.sort
    end

  end
end
