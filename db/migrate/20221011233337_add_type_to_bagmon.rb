class AddTypeToBagmon < ActiveRecord::Migration[5.2]
  def change
    add_reference :bagmons, :type_id, foreign_key: true
  end
end
