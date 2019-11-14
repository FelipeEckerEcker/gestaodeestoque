class CreateCidades < ActiveRecord::Migration[5.2]
  def change
    create_table :cidades do |t|
      t.string :nome
      t.string :cep
      t.string :bairro

      t.timestamps
    end
  end
end
