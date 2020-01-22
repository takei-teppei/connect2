class Resume < ApplicationRecord
  has_secure_password
  belongs_to :user

  validates :fullname,               presence: true, length: {maximum: 10}
  validates :name_kana,               presence: true, length: {maximum: 20}
  validates :gender,               presence: true, length: {maximum: 4}
  validates :birthday,               presence: true, length: {maximum: 15}
  validates :submit_date,               presence: true, length: {maximum: 20}
  validates :post_code,               presence: true, length: {maximum: 15}
  validates :perfectures,               presence: true, length: {maximum: 50}
  validates :build,               presence: true, length: {maximum: 35}
  validates :tel,               presence: true, length: {maximum: 15}
  validates :cellphone,               presence: true, length: {maximum: 15}
  validates :e_mail,               presence: true, length: {maximum: 50}
  validates :free_message,               presence: true
  validates :motivation,               presence: true
end
