require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name, :last_name, :email, :phone
      t.datetime :created_at, :updated_at
    end
  end
end