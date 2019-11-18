class RemovePessoaFromMovimentoEstoque < ActiveRecord::Migration[5.2]
  def change
    remove_column :movimentode_estoques, :pessoa, :string
  end
end
