class PagosPublicidad < ApplicationRecord
  belongs_to :cliente
  belongs_to :promocionEventos
end
