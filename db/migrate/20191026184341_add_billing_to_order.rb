class AddBillingToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :billing, null: true, foreign_key: true
  end
end
