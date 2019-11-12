class TinyHouse < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :rents
end
