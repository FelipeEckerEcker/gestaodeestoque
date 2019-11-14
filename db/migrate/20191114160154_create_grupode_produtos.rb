class CreateGrupodeProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :grupode_produtos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
