class Community < ApplicationRecord
    has_many :users, dependent: :destroy
end
