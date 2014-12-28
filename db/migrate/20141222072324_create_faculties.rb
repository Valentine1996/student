class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.text :information

      t.timestamps null: false
    end
  end
end
