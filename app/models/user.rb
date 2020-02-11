class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :resumes
  accepts_nested_attributes_for :resumes
  has_many :group_users, dependent: :destroy
  has_many :groups, through: :group_users, dependent: :destroy
end