require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many :student_teachers
  has_many :students, through: :student_teachers

  validates :email, :uniqueness => true

  def name
    self.first_name + " " + self.last_name
  end


end