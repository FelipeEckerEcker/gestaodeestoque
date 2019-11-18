class AddProdutoToMovimentodeEstoque < ActiveRecord::Migration[5.2]
  def change
    add_reference :movimentode_estoques, :produto, foreign_key: true
  end
end
