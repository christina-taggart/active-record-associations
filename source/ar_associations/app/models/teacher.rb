require 'i18n'
require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many :students
  attr_reader :name, :email, :phone

  def name
    "#{self[:first_name]} #{self[:last_name]}"
  end


end