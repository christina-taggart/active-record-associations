require 'rspec'
require 'date'
require_relative '../app/models/teacher'


describe Teacher do

  it "should be able to be created with name, email and phone" do
    teacher = Teacher.new first_name: "Sam", last_name: "Samskies", email: "samprofessional@gmail.com", phone: "8082183629"
    teacher.first_name.should eq "Sam"
    teacher.last_name.should eq "Samskies"
    teacher.email.should eq "samprofessional@gmail.com"
    teacher.phone.should eq "8082183629"
  end

end