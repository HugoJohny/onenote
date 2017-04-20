json.extract! pessoa, :id, :nome, :endereco, :latitude, :longitude, :telefone, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)