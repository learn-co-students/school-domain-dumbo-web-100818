# code here!
require "pry"
class School
 attr_accessor :roster, :name
   def initialize(name)
    @name = name
    @roster = {}
   end

   def add_student(name, grade)
    roster[grade] ||= []
    roster[grade]<<name
    roster
   end

   def grade(school_grade)
     roster[school_grade]
   end

   def sort
    roster.each do |grade, students|
      students.sort!
    end
    roster
  end
end
