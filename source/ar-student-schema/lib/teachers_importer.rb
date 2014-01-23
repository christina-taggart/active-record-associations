require_relative '../app/models/teacher'
require 'faker'
module TeachersImporter
  def self.import
    9.times do
      first = Faker::Name.name.split(" ").first
      last = Faker::Name.name.split(" ")[1]
      e_mail = Faker::Internet.email
      phone_num = Faker::PhoneNumber.phone_number
      attribute_hash = {first_name: first, last_name: last, email: e_mail, phone: phone_num}
      Teacher.create!(attribute_hash)
    end
  end
end