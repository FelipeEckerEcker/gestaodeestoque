class RemoveGrupodeProdutoFromProduto < ActiveRecord::Migration[5.2]
  def change
    remove_column :produtos, :grupodeproduto, :string
  end
end
