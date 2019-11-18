class RemoveEnderecoFromPessoa < ActiveRecord::Migration[5.2]
  def change
    remove_column :pessoas, :endereco, :string
  end
end
