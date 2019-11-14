class Pessoa < ApplicationRecord
    belongs_to :cidade
    belongs_to :estado
    belongs_to :endereco

    validates :nome, :documento, :endereco, :cidade, :estado, presence: true
end
