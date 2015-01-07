class CreateShoppingCartRelationships < ActiveRecord::Migration
  def change
    create_table :shopping_cart_relationships do |t|
      t.integer :user_id, null: false
      t.integer :item_id, null: false

      t.timestamps
    end
  end
end
