class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :documento
      t.string :endereco
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
