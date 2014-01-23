require_relative '../config'

class CreateStudentsTeachers < ActiveRecord::Migration
  def change
    create_table :student_teacher do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.timestamps
    end
  end
end
