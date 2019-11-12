class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :tiny_house
end
