class CreateActs < ActiveRecord::Migration[6.0]
  def change
    create_table :acts do |t|
      t.references :community, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.timestamp :date
      t.string :photo

      t.timestamps
    end
  end
end
