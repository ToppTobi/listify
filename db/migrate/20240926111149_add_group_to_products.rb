class AddGroupToProducts < ActiveRecord::Migration[7.2]
  def change
    # Füge die group_id-Referenz hinzu, vorerst ohne NOT NULL-Einschränkung
    add_reference :products, :group, foreign_key: true, null: true
  end
end
