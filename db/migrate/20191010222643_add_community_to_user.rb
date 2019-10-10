class AddCommunityToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :community, null: false, foreign_key: true
  end
end
