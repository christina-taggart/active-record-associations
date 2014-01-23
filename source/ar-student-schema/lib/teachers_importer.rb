require 'faker'
require_relative '../app/models/teacher.rb'

module TeacherImporter

  extend self

  def create_teachers
    9.times do
      name = Faker::Name.name
      email = Faker::Internet.email
      phone = Faker::PhoneNumber.phone_number
    Teacher.create(:name => name,
              :email => email,
              :phone => phone
            )
    end
  end
end