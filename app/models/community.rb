class Community < ApplicationRecord
    has_many :users, dependent: :destroy
    has_many :expenses, dependent: :destroy
    has_many :acts, dependent: :destroy
end