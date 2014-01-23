require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many :student_teachers
  has_many :students, through: :student_teachers
  I18n.enforce_available_locales = false
  validates :email, :format => {:with => /[\d\w]+@[\d\w]+\.\w{2,}/}, :uniqueness => true
  validate :phone_digit_length

  def phone_digit_length
    errors.add(:phone, "Phone numbers must be 10 or more digits long") if phone.scan(/\d/).length < 10
  end
end

p Teacher.create(email: 'ender@email.com', phone:'123-456-7898', name: 'Ender').valid? == false
