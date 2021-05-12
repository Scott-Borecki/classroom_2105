class Classroom

  attr_reader :subject, :capacity, :students

  def initialize(subject, capacity)
    @subject = subject
    @capacity = capacity
    @students = []
  end

  def add_student(name)
    @students << name
  end

  def yell_at_students
    uppercase_names = []
    @students.each do |name|
      uppercase_names << name.upcase
    end
    uppercase_names
  end

  def over_capacity?
    @students.length > @capacity
  end

  def kick_out
    @students.delete_at(0)
  end

end
