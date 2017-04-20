json.extract! person, :id, :nome, :nomeFantasia, :cpf, :cnpj, :rg, :tipoPessoa, :created_at, :updated_at
json.url person_url(person, format: :json)
