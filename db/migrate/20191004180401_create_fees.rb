class CreateFees < ActiveRecord::Migration[6.0]
  def change
    create_table :fees do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :value
      t.boolean :payed

      t.timestamps
    end
  end
end
