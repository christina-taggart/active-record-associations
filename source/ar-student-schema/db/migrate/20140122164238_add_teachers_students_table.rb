require_relative '../config'

# this is where you should use an ActiveRecord migration to

class AddTeachersStudentsTable < ActiveRecord::Migration
  def change
    remove_column :students, :teacher_id
    create_table "teachers_students", :id => false do |t|
      t.column "teacher_id", :integer, :null => false
      t.column "student_id", :integer, :null => false
    end
    # HINT: checkout ActiveRecord::Migration.create_table
  end
end
