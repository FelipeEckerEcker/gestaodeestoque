class RemoveOperacaoFromMovimentodeEstoque < ActiveRecord::Migration[5.2]
  def change
    remove_column :movimentode_estoques, :operacao, :string
  end
end
