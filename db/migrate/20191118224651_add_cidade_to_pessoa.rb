class AddCidadeToPessoa < ActiveRecord::Migration[5.2]
  def change
    add_reference :pessoas, :cidade, foreign_key: true
  end
end
