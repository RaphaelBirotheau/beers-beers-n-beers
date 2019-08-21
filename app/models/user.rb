class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  # has_many :booked_aperos, through: :bookings, class_name: 'Apero'
  has_many :booked_aperos, :through => :bookings, :source => :apero
  has_many :aperos

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true
  mount_uploader :photo, PhotoUploader
end
