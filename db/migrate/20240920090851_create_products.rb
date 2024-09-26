class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :user_name
      t.string :product_name
      t.string :quantity
      t.string :affiliation

      t.timestamps
    end
  end
end
