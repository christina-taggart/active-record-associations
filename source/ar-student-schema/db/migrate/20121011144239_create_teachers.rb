require_relative '../config'
class CreateTeachers < ActiveRecord::Migration

    def change

      create_table :teachers do |x|
        x.string :name
        x.string :email
        x.string :phone


        x.datetime :created_at
        x.datetime :updated_at
        end
      end
end