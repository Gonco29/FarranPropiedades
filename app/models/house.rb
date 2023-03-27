class House < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :favorites
  has_one :service
  has_many_attached :photos

  validates :suptotal, comparison: { greater_than_or_equal_to: :supcubierta }
  validates :provincia, :domicilio, :departamento, :tipo, :condicion, :precio,
            :descripcion, :dormitorio, :bano, :supcubierta, :suptotal,
            :cochera, :photos, presence: true

  include PgSearch::Model
  pg_search_scope :search_houses, against: %i[provincia departamento localidad barrio domicilio tipo precio condicion],
                                  using: { tsearch: { prefix: true } }
end
  