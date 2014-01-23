require 'rspec'
require 'date'
require_relative '../app/models/teacher'
require_relative '../app/models/student'
require_relative '../app/models/student_teacher'


teacher = Teacher.where('id = ?', 6).first
p teacher.students