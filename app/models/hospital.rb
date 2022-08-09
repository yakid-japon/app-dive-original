class Hospital < ApplicationRecord
    has_many :prestations, dependent: :destroy
    validates :hospi_name, presence:true
    validates :hospi_adresse, presence:true
    def self.search(search)
        if search
          where('hospi_name LIKE ?', "%#{search}%")
        else
          all
        end
    end
end
