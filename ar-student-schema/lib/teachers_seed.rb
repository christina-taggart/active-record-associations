require_relative '../app/models/teacher'
require 'faker'

module TeachersSeeder

  def self.seed
    9.times do
      Teacher.create first_name: Faker::Name.first_name,
                     last_name: Faker::Name.last_name,
                     email: Faker::Internet.email,
                     phone: Faker::PhoneNumber.phone_number.gsub(/[()-.]/, '')[0..9]
    end

  end

end
