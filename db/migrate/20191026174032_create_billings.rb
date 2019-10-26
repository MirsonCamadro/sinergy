class CreateBillings < ActiveRecord::Migration[6.0]
  def change
    create_table :billings do |t|
      t.string :code
      t.string :payment_method
      t.decimal :amount, precision: 5, scale: 2
      t.string :currency
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
