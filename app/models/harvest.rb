class Harvest < ApplicationRecord
  belongs_to :planting
  belongs_to :user
end
