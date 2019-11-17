class Unidade < ApplicationRecord

    validates :descricao, :sigla, presence: true
end
