class User < ApplicationRecord
    has_many :expenses, dependent: :destroy
    has_many :groups, dependent: :destroy

    has_one_attached :avatar, dependent: :destroy

    validates :email, presence: true
    validates :name, presence: true, uniqueness: true
end
