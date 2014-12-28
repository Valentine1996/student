class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fullname
      t.date :birthday
      t.references :Recordbook, index: true
      t.references :Faculty, index: true
      t.string :group

      t.timestamps null: false
    end
    add_foreign_key :students, :Recordbooks
    add_foreign_key :students, :Faculties
  end
end
