json.extract! pessoa, :id, :nome, :fantasia, :comercial, :celular, :residencial, :email, :endereco, :cidade, :pais, :estado, :cep, :observacao, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)