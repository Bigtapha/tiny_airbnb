class TinyHouse < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :rents

  mount_uploader :photo, PhotoUploader

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
