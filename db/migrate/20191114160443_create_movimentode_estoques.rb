class CreateMovimentodeEstoques < ActiveRecord::Migration[5.2]
  def change
    create_table :movimentode_estoques do |t|
      t.date :data
      t.integer :quantidade
      t.string :pessoa
      t.string :operacao
      t.string :produto

      t.timestamps
    end
  end
end
