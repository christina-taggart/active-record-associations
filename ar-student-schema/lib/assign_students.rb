require_relative '../app/models/student'
require_relative '../app/models/teacher'
require_relative '../app/models/student_teachers'

Student.all.each do |student|
  random = (1..8).to_a.sample
  # student.teacher = Teacher.find(random)
  student.teachers << Teacher.find(random)
  student.save
end

teacher = Teacher.find_by_id(3)
p teacher.students
puts "--- #{teacher.name} ---"

student = Student.find_by_first_name('Ferdi')
student.teachers.each do |teacher|
  p teacher.name
end
puts "--- #{student.name} ---"
stu = Student.first
teach = Teacher.first
stu.teachers << teach
