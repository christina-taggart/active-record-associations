require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many :students
  validates :email, :uniqueness => true

  def name
    self.first_name + " " + self.last_name
  end


end