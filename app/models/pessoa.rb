class Pessoa < ApplicationRecord
    belongs_to :endereco

    validates :nome, :documento, presence: true
    validates :nome, uniqueness: true
end
