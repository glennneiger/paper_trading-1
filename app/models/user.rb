class User < ApplicationRecord
  authenticates_with_sorcery!

  validates_confirmation_of :password
  validates_presence_of :password, on: :create
  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email

  has_many :orders

  monetize :balance_cents
end
