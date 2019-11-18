class Produto < ApplicationRecord
    belongs_to :unidade
    belongs_to :grupode_produto

    validates :nome, presence: true
end
