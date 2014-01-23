require_relative '../app/models/teachers'
require 'faker'
module TeachersImporter
  def self.import
    9.times do
      name = Faker::Name.name
      e_mail = Faker::Internet.email
      phone_num = Faker::PhoneNumber.phone_number
      attribute_hash = {name: name, email: e_mail, phone: phone_num}
      Teacher.create!(attribute_hash)
    end
  end
end