class CreateBagmons < ActiveRecord::Migration[5.2]
  def change
    create_table :bagmons do |t|
      t.string :name
      t.integer :type_id

      t.timestamps
    end
  end
end
