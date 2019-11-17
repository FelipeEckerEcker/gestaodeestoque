class Cidade < ApplicationRecord

    validates :nome, :cep, :bairro, presence: true
end
