class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :items_name,          null: false
      t.text :explanation,           null: false
      t.integer :category_id,        null: false
      t.integer :items_state_id,     null: false
      t.integer :shipping_burden_id, null: false
      t.integer :territory_id,       null: false
      t.integer :carry_dey_id,       null: false
      t.integer :price,              null: false
      t.references :user,            null: false, foreign_key:true
      t.timestamps
    end
  end
end
