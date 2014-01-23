require_relative '../app/models/student'
require_relative '../app/models/teacher'

Student.all.each do |student|
  random = (1..8).to_a.sample
  student.teacher = Teacher.find(random)
  student.save
end

# teacher = Teacher.find_by_id(3)
# p teacher.students

student = Student.find_by_first_name('Ferdi')
p student.teacher
