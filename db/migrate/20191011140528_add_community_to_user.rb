class AddCommunityToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :community, null: true, foreign_key: true
  end
end
