require_relative '../app/models/student'
require_relative '../app/models/teacher'
require_relative '../app/models/student_teacher'

# little_bobby = Student.first
# teacher = Teacher.first

# little_bobby.teachers << teacher
Student.all.each do |student|
  rand_id = (1..8).to_a.sample
  student.teachers << Teacher.find_by(id: "#{rand_id}")
end