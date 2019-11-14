class AddColumnCidadeToEstado < ActiveRecord::Migration[5.2]
  def change
    add_column :estados, :cidade, :string
  end
end
