class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include SimpleDiscussion::ForumUser

  belongs_to :community 
  
  has_many :fees, dependent: :destroy
  has_many :orders

  has_one_attached :image
  scope :by_community, ->(community_id) { where("community_id = ?", community_id)}

  def name
    "#{email}"
  end
  
  def self.unpayed_fees_by_community(community_id)
    unpayed_fees = []
    users = by_community(community_id)
    users.each do |user|
      user.fees.unpayed.each do |fee|
        unpayed_fees << fee.value
      end
    end
    return unpayed_fees
  end

  def self.payed_fees_by_community(community_id)
    payed_fees = []
    users = by_community(community_id)
    users.each do |user|
      user.fees.payed_yes.each do |fee|
        payed_fees << fee.value
      end
    end
    return payed_fees
  end

         
end
