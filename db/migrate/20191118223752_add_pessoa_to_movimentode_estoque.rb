class AddPessoaToMovimentodeEstoque < ActiveRecord::Migration[5.2]
  def change
    add_reference :movimentode_estoques, :pessoa, foreign_key: true
  end
end
