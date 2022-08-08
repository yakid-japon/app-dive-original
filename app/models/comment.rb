class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prestation
  validates :opinion, presence:true
  scope :kaminari, -> (kaminari_pages){page(kaminari_pages).per(3)}
  paginates_per 50
end
