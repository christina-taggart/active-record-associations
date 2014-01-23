require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateStudents < ActiveRecord::Migration
    def change
      create_table :students do |x|
        x.string :first_name
        x.string :last_name
        x.string :gender
        x.date :birthday
        x.string :email
        x.string :phone

        x.datetime :created_at
        x.datetime :updated_at
           end
     end
end