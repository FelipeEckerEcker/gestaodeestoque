class AddGrupodeProdutoToProduto < ActiveRecord::Migration[5.2]
  def change
    add_reference :produtos, :grupode_produto, foreign_key: true
  end
end
