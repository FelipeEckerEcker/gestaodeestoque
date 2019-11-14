class AddColumnEnderecoToCidade < ActiveRecord::Migration[5.2]
  def change
    add_column :cidades, :endereco, :string
  end
end
