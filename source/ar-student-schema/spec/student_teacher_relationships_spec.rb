require 'rspec'
require_relative '../app/models/student'
require_relative '../app/models/teacher'


describe Student, "has teacher" do
  before(:all) do
    @student = Student.all.first
  end

  it "should have one teacher" do
    expect(@student.teacher).to be_instance_of(Teacher)
  end
end

describe Teacher, "has students" do
  before(:all) do
    @teacher = Teacher.all.first
  end

  it "should have one teacher" do
    expect(@teacher.students.count).to be > 1
  end
end