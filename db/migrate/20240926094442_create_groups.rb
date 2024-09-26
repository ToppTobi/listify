class CreateGroups < ActiveRecord::Migration[7.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :plz
      t.string :city
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
