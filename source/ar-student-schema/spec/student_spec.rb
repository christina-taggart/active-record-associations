require 'rspec'
require 'date'
require_relative '../app/models/student'
require_relative '../app/models/teacher'


describe Student, "#name and #age" do

  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Base.connection.table_exists?(:students).should be_true
    Student.delete_all

    @student = Student.new
    @student.assign_attributes(
      :first_name => "Happy",
      :last_name => "Gilmore",
      :gender => 'male',
      :birthday => Date.new(1970,9,1)
    )
  end

  it "should have name and age methods" do
    [:name, :age].each { |mthd| @student.should respond_to mthd }
  end

  it "should concatenate first and last name" do
    @student.name.should == "Happy Gilmore"
  end

  it "should be the right age" do
    now = Date.today
    age = now.year - @student.birthday.year - ((now.month > @student.birthday.month || (now.month == @student.birthday.month && now.day >= @student.birthday.day)) ? 0 : 1)
    @student.age.should == age
  end

end

describe Student, "validations" do

  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Base.connection.table_exists?(:students).should be_true
    Student.delete_all
  end

  before(:each) do
    @student = Student.new
    @student.assign_attributes(
      :first_name => "Kreay",
      :last_name => "Shawn",
      :birthday => Date.new(1989,9,24),
      :gender => 'female',
      :email => 'kreayshawn@oaklandhiphop.net',
      :phone => '(510) 555-1212 x4567'
    )
  end

  it "should accept valid info" do
    @student.should be_valid
  end

  it "shouldn't accept invalid emails" do
    ["XYZ!bitnet", "@.", "a@b.c"].each do |address|
      @student.assign_attributes(:email => address)
      @student.should_not be_valid
    end
  end

  it "should accept valid emails" do
    ["joe@example.com", "info@bbc.co.uk", "bugs@devbootcamp.com"].each do |address|
      @student.assign_attributes(:email => address)
      @student.should be_valid
    end
  end

  it "shouldn't accept toddlers" do
    @student.assign_attributes(:birthday => Date.today - 3.years)
    @student.should_not be_valid
  end

  it "shouldn't allow two students with the same email" do
    another_student = Student.create!(
      :birthday => @student.birthday,
      :email => @student.email,
      :phone => @student.phone,
      :first_name => 'Stuart',
      :last_name => 'McSuartson',
      :gender => 'm'
    )
    @student.should_not be_valid
  end

end

describe Student, "advanced validations" do

  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Base.connection.table_exists?(:students).should be_true
    Student.delete_all
  end

  before(:each) do
    @student = Student.new
    @student.assign_attributes(
      :first_name => "Kreay",
      :last_name => "Shawn",
      :birthday => Date.new(1989,9,24),
      :gender => 'female',
      :email => 'kreayshawn@oaklandhiphop.net',
      :phone => '(510) 555-1212 x4567'
    )
  end

  it "should accept valid info" do
    @student.should be_valid
  end

  it "shouldn't accept invalid phone numbers" do
    @student.assign_attributes(:phone => '347-8901')
    @student.should_not be_valid
  end

end

describe Student, "teacher association" do

  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Base.connection.table_exists?(:students).should be_true
    Student.delete_all
    Teacher.delete_all

    @teacher = Teacher.create!(
        :first_name => "Tiger",
        :last_name => "Woods",
        :email => "winner@pga.com",
        :phone => "123-123-1234"
      )

    @students = []

    9.times do |num|
      @students << Student.create!(
        :first_name => "Happy#{num}",
        :last_name => "Gilmore",
        :gender => 'male',
        :email => "kreayshawn#{num}@oaklandhiphop.net",
        :phone => '(510) 555-1212 x4567',
        :birthday => Date.new(1970,9,1),
        :teacher_id => @teacher.id
      )
    end
  end

  it "student should belong to teacher" do
    expect(@students[0].teacher).to eq @teacher
  end

  it "teacher should see all students" do
    9.times do |num|
      expect(@teacher.students[num].id).to eq @students[num].id
    end
  end




end