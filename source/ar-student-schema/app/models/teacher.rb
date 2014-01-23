require_relative '../../db/config'

class EmailValidator < ActiveModel::Validator
  def validate(record)
    unless record.email.match(/.+@.+\..{2,}/)
      record.errors[:base] << "Email is invalid format"
    end
  end
end

class PhoneValidator < ActiveModel::Validator
  def validate(record)
    unless record.phone.match(/(\(?\d{3}\)?-?\s?\d{3}-?\s?\d{4}\s?)(x\d{4})?/)
      record.errors[:base] << "Yo phone number is wack"
    end
  end
end

class Teacher < ActiveRecord::Base
  has_many :students
  include ActiveModel::Validations
  validates_with EmailValidator
  validates_with PhoneValidator

  validates :email, :uniqueness => true

  def name
    "#{self[:first_name]} #{self[:last_name]}"
  end

end