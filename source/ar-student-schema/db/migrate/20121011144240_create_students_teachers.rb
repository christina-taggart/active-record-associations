require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateStudentsTeachers < ActiveRecord::Migration
    def change
      create_table :student_teachers do |x|
        x.integer :student_id
        x.integer :teacher_id

        x.datetime :created_at
        x.datetime :updated_at
           end
     end
end