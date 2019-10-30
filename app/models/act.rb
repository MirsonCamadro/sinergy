class Act < ApplicationRecord
  belongs_to :community

  validates :name, length: { maximum: 20 }
  validates :description, length: { maximum: 500 }
end
