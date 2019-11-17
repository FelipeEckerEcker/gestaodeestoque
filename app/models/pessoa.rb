class Pessoa < ApplicationRecord
    belongs_to :endereco, class_name: 'Pessoa'
    belongs_to :cidade, class_name: 'Pessoa'
    belongs_to :estado, class_name: 'Pessoa'

    validates :nome, :documento, :endereco, :cidade, :estado, presence: true
    validates :nome, :endereco, uniqueness: true
end
