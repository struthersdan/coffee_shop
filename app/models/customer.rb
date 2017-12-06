# customer model
class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :province
  has_many :orders
  validates :name, :address, :city, :province_id, :postal_code, presence: true
  validates :name, :email, uniqueness: true
end
