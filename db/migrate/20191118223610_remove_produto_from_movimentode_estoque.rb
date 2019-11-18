class RemoveProdutoFromMovimentodeEstoque < ActiveRecord::Migration[5.2]
  def change
    remove_column :movimentode_estoques, :produto, :string
  end
end
