class CreateBagmons < ActiveRecord::Migration[5.2]
  def change
    create_table :bagmons do |t|
      t.integer :number
      t.string :name
      t.string :image
      t.integer :type_id

      t.timestamps
    end
  end
end
