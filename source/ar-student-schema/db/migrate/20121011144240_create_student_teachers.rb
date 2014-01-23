require_relative '../config'

class CreateStudentTeachers < ActiveRecord::Migration
  def change
    create_table :student_teachers do |col|
      col.belongs_to :student
      col.belongs_to :teacher
    end
  end
end