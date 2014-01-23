require_relative '../../db/config'
class Teacher < ActiveRecord::Base

  has_many :student_teachers
  has_many :students, through: :student_teachers
  validates :email, :uniqueness => true
  I18n.enforce_available_locales = false

end



