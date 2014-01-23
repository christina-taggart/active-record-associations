require_relative '../config'

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :email, :null => false
      t.string :phone, :null => false
      t.datetime :created_at, :null => false
      t.datetime :updated_at, :null => false
    end
    # HINT: checkout ActiveRecord::Migration.create_table
  end
end
