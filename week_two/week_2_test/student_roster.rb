class Roster
  attr_accessor :student, :grade

  def initialize(student, grade)
    @student = student
    @grade = grade
  end
end

students = [ Roster.new("Timmy", "3"), Roster.new("Emma", "2"), Roster.new("Amber", "2"), Roster.new("Ryan", "1")]

puts "Enter student name:"
student_name = gets.chomp
puts "Enter student grade:"
student_grade = gets.chomp
students << Roster.new(student_name, student_grade.to_i)

puts "Enter name for student:"
student_name = gets.chomp

students.each do |student|
  if student_name == student.student
    puts student.student
    puts student.grade
  end
end
