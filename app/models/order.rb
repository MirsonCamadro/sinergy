class Order < ApplicationRecord
  belongs_to :user
  belongs_to :fee
  belongs_to :billing, optional: true
end
