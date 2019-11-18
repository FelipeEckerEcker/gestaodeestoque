class AddEstadoToCidade < ActiveRecord::Migration[5.2]
  def change
    add_reference :cidades, :estado, foreign_key: true
  end
end
