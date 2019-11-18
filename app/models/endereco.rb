class Endereco < ApplicationRecord
    belongs_to :cidade

    validates :nome, :cpf, :cep, presence: true
end
