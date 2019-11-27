class MovimentodeEstoque < ApplicationRecord
    belongs_to :pessoa
    belongs_to :operacao
    belongs_to :produto

    validates :data, :quantidade, presence: true
    validates :quantidade, numericality: { greater_than_or_equal_to: 1,
                                       less_than_or_equal_to: 8 }
                                       
    scope :por_operacao, lambda { |produto, data, operacao|
        where('produto_id = ? and data <= ? and operacao_id = ?', produto, data, operacao).sum(:quantidade)
    }
end 
