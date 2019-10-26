class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :fee, null: false, foreign_key: true
      t.boolean :payed, default: false
      t.integer :price

      t.timestamps
    end
  end
end
