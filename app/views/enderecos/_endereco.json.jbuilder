json.extract! endereco, :id, :nome, :cpf, :cep, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
