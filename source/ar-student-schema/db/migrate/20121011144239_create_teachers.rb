require_relative '../config'

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |col|
      col.string :first_name
      col.string :last_name
      col.string :email
      col.string :phone
    end
  end
end