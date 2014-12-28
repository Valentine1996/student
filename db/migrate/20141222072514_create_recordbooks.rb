class CreateRecordbooks < ActiveRecord::Migration
  def change
    create_table :recordbooks do |t|
      t.float :gpatests
      t.float :gpaexams
      t.integer :bursaly

      t.timestamps null: false
    end
  end
end
