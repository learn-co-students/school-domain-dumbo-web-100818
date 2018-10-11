class School
  attr_reader :roster
  attr_accessor :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster.has_key? (grade)
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
    return @roster[grade]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_hash = {}
    @roster.each do |grade, name|
      new_hash[grade] = name.sort
    end
    new_hash
  end

end
