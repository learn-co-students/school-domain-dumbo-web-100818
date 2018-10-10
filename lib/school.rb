class School

    attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade]=[]
      @roster[grade].push(name)
    else
      roster[grade].push(name)
    end
  end

  def grade(grade)
  scholars =[]
  @roster[grade].each do |students|
      scholars.push(students)
    end
  end

  def sort
  sorted_roster={}
    @roster.map do |grade,student|
      sorted_roster[grade]=@roster[grade].sort
    end
  sorted_roster
  end

end
