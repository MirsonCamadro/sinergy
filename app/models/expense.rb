class Expense < ApplicationRecord
  belongs_to :community

  validates :value, numericality: true
  validates :name, length: { maximum: 20 }
  validates :description, length: { maximum: 500 }
end
