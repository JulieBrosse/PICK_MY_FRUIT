class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum status: { picker: 1, owner: 2 }
  validates :status, presence: true
  validates :name, presence: true
  validates :age, presence: true
  validates :gender, presence: true
#  validates :photo, allow_blank:false
#  validates :position,

  has_many :orders
  has_many :plantings, foreign_key: "owner_id"

end
