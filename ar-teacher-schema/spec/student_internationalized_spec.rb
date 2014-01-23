require 'rspec'
require_relative '../app/models/student'


describe Teacher, "internationalized" do

  it "should have a name attribute" do
    teacher = Teacher.all.first
    teacher.name = "John Doe"
    teacher.save!
    teacher = Teacher.find(teacher.id)
    teacher.name.should == "John Doe"
  end

  it "should have an address field" do
    teacher = Teacher.new
    lambda do
      teacher.update_attributes(
        :name => "Jane Doe",
        :email => "jane.doe@example.com",
        :phone => "510-555-1212",
      )
    end.should_not raise_error
  end

  it "should contain correct sample data" do
    Teacher.where("name = ?", "Karim Bishay").count.should be >= 1
  end

end
