require_relative '../app/models/student'

Student.all.each do |student|
  student.teacher_id = (1..9).to_a.sample
  student.save
end