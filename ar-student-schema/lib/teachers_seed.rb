require_relative '../app/models/teacher'
require 'faker'
require 'pry'

module TeachersSeeder

  def self.seed

    students = Student.all

    9.times do
      new_teacher = Teacher.create first_name: Faker::Name.first_name,
                     last_name: Faker::Name.last_name,
                     email: Faker::Internet.email,
                     phone: Faker::PhoneNumber.phone_number.gsub(/[()-.]/, '')[0..9]

      6.times do
        students.pop.update_attributes teacher: new_teacher
      end

    end



  end

end
