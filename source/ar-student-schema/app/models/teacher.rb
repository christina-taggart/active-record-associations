require_relative '../../db/config'

class Teacher < ActiveRecord::Base
# implement your Student model here
  validates :email, :format => { :with => /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i, :message => "bad email" }
  validates :email, :uniqueness => true
  validates :first_name, :uniqueness => true

  def students
    ids = StudentTeachers.where('teacher_id = ?', self[:id]).map do |pair|
      pair[:student_id]
    end
    Student.where(:id=> ids)
  end

end

