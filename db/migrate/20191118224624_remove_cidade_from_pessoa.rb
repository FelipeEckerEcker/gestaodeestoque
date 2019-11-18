class RemoveCidadeFromPessoa < ActiveRecord::Migration[5.2]
  def change
    remove_column :pessoas, :cidade, :string
  end
end
