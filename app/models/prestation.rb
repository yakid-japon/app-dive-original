class Prestation < ApplicationRecord
  belongs_to :hospital
  has_many :payment, dependent: :destroy
  has_many :comment, dependent: :destroy
  validates :name_prest, presence:true
  validates :price, presence:true
end
