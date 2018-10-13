class School

def initialize(name)
  @name = name
  @roster = {}
end

def roster #reader
  @roster
end

def add_student(student_name, student_grade)
  if !@roster[student_grade]
    @roster[student_grade] = []
    @roster[student_grade] << student_name
  else
    @roster[student_grade] << student_name
  end
  @roster
end

def grade(student_grade)
  @roster[student_grade]
end

def sort
  @roster.each do |student_grade, student_name|
    @roster[student_grade] = student_name.sort
  end
end
end
