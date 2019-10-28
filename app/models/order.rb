class Order < ApplicationRecord
  belongs_to :user
  belongs_to :fee
  belongs_to :billing, optional: true

  scope :cart, (-> {where(payed: false)})

  def self.to_paypal_items
    where(nil).map do |order|
      item = {}
      item[:name] = order.fee.fees_date
      item[:sku] = order.id.to_s
      item[:price] = order.price.to_s
      item[:currency] = 'USD'
      item[:quantity] = 1
      item
    end
  end

end
