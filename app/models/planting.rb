class Planting < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :harvests
  scope :mine, ->(user) { where(user: user) }
end

