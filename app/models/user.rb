class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # has_many :orders
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :plantings
  #  enum status: { picker: 1, owner: 2 }

  #  validates :photo, allow_blank:false
  #validates :position,
end
