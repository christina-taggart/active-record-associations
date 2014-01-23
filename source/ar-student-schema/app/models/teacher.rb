require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  validates :email, :format => { :with => /.+@.+\..{2,}/, :message => "This email doesn't work." }
  validates :email, :uniqueness => true
  has_many :students
end

# emily = Teacher.create(:email => 'folilym@gmail.com', :name => 'Emily', :phone => '732-809-3405')

# p emily.valid?