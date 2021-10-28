class User < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :payments, dependent: :destroy
    validates :name, presence:true, length: {minimum:3, maximum:30}
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  end