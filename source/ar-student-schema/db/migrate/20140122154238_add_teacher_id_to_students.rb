require_relative '../config'

# this is where you should use an ActiveRecord migration to

class AddTeacherIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :teacher_id, :integer
    # HINT: checkout ActiveRecord::Migration.create_table
  end
end
