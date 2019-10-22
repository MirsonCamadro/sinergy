class AddFeesDateToFee < ActiveRecord::Migration[6.0]
  def change
    add_column :fees, :fees_date, :datetime
  end
end
