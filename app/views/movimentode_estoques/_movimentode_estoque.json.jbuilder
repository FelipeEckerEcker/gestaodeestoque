json.extract! movimentode_estoque, :id, :data, :quantidade, :pessoa, :operacao, :produto, :created_at, :updated_at
json.url movimentode_estoque_url(movimentode_estoque, format: :json)
