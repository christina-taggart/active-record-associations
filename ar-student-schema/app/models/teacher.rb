require_relative '../../db/config'

class Teacher < ActiveRecord::Base
# implement your Student model here
  validates :email, :format => { :with => /[\d\w]+@[\d\w]+\.\w{2,}/, :message => "Not Valid Email" }
  validates :email, :uniqueness => true

end