class MovimentodeEstoque < ApplicationRecord
    belongs_to :pessoa, class_name: 'Pessoa'
    belongs_to :operacao, class_name: 'Pessoa'
    belongs_to :produto, class_name: 'Pessoa'

    validates :data, :quantidade, :pessoa, :operacao, :produto, presence: true
    validates :quantidade, numericality: { greater_than_or_equal_to: 1,
                                       less_than_or_equal_to: 8 }
end
