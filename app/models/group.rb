class Group < ApplicationRecord
  has_many :group_users, dependent: :destroy
  has_many :users, through: :group_users , dependent: :destroy
  has_many :messages
  
  validates :name, presence: true
end
