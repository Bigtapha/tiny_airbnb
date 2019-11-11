class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rents
  has_many :tiny_houses, through: :rents # locataire
  has_many :own_tiny_houses, class_name: 'TinyHouse', foreign_key: :owner_id
end

# User.last.tiny_houses     => tiny_houses locataire
# User.last.own_tiny_houses => tiny_houses proprio
