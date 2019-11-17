class Endereco < ApplicationRecord

    validates :nome, :cpf, :cep, presence: true
end
