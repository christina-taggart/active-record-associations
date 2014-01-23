require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email, :uniqueness => true
  validate :email_must_have_valid_format
  validate :age_cannot_be_less_than_five
  validate :phone_number_must_have_at_leat_ten_digits

  def name
    first_name + " " + last_name
  end

  def name=(name)
    name = name.split(" ")
    first_name, last_name = name.shift, name.join(" ")
    self.first_name = first_name
    self.last_name = last_name
  end

  def age
    ((Date.today - birthday)/(365.2422)).to_i
  end

  def age_cannot_be_less_than_five
    if age < 5
      errors.add(:birthday, "Age cannot be less than 5 years")
    end
  end

  def phone_number_must_have_at_leat_ten_digits
    if phone.scan(/\d/).count < 10
      errors.add(:phone, "Phone number must have at least 10 digits")
    end
  end

  def email_must_have_valid_format
    unless email.match(/^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/)
      errors.add(:email, "Email must have valid format")
    end
  end
end