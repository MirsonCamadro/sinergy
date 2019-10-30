class Fee < ApplicationRecord
  belongs_to :user
  scope :unpayed , -> { where(payed: false)}
  scope :payed_yes , -> { where(payed: true)}

  validates :value, numericality: true
  validates :fees_date, presence: true


end
