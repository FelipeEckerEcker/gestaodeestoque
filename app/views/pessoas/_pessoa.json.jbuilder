json.extract! pessoa, :id, :nome, :documento, :endereco, :cidade, :estado, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
