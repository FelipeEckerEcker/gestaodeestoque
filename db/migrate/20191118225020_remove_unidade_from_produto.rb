class RemoveUnidadeFromProduto < ActiveRecord::Migration[5.2]
  def change
    remove_column :produtos, :unidade, :string
  end
end
