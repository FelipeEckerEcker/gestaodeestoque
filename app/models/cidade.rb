class Cidade < ApplicationRecord
    belongs_to :estado

    validates :nome, :cep, :bairro, presence: true
end
