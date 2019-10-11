class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.references :community, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.integer :value

      t.timestamps
    end
  end
end
