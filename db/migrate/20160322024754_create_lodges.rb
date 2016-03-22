class CreateLodges < ActiveRecord::Migration
  def change
    create_table :lodges do |t|
      t.string :name, null: :false
      t.text	:address
      t.string :landline
      t.string :mobile
      t.string :manager_name
      t.string :manager_phone
      t.boolean :active, null: :false	
      t.timestamps null: false
    end
  end
end
