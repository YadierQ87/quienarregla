class PagosPromocion < ApplicationRecord
  belongs_to :cliente
  belongs_to :publicidad
end
