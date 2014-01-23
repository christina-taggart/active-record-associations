require_relative '../../db/config'

class Teacher < ActiveRecord::Base
# implement your Student model here
  # has_many :students

#=======   Associations   ============

  has_and_belongs_to_many :students


#=======   Validations   ===========


  validates :email, :format => { :with => /[\d\w]+@[\d\w]+\.\w{2,}/, :message => "Not Valid Email" }
  validates :email, :uniqueness => true

end