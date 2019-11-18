class AddOperacaoToMovimentodeEstoque < ActiveRecord::Migration[5.2]
  def change
    add_reference :movimentode_estoques, :operacao, foreign_key: true
  end
end
