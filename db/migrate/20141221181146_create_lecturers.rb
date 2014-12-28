class CreateLecturers < ActiveRecord::Migration
  def change
    create_table :lecturers do |t|
      t.string :fullname
      t.string :degree
      t.integer :salary

      t.timestamps null: false
    end
  end
end
