class School
  attr_accessor :roster, :name
  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
    roster
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each {|x,y| y.sort!}
    roster
  end
end
