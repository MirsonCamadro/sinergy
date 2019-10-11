class Community < ApplicationRecord
    has_many :users, dependent: :destroy
    has_many :expenses, dependent: :destroy
end
