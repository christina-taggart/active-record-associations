require_relative '../app/models/student_teacher'
require_relative '../app/models/teacher'
require_relative '../app/models/student'


teach = Teacher.last
teach
stu = Student.all.sample
Teacher.all.each do |teacher|
teacher.students << Student.all.shuffle!.slice(6)
end

p teach.students