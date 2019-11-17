class Produto < ApplicationRecord
    belongs_to :unidade, class_name: 'Pessoa'
    belongs_to :grupode_produto, class_name: 'Pessoa'

    validates :nome, :unidade, :grupode_produto, presence: true
end
