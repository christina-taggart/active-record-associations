require_relative '../config'

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birthday
      t.string :email
      t.string :phone

      t.belongs_to :teacher # Foreign key for teacher

      t.timestamps # timestamps Created and Updated at

    end
  end
end

class AddColumnToStudents < ActiveRecord::Migration

  def update
    add_column :teachers, :favorite_food, string
  end
end
