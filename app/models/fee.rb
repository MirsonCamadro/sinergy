class Fee < ApplicationRecord
  belongs_to :user
  scope :unpayed , -> { where(payed: false)}
  scope :payed_yes , -> { where(payed: true)}
end
