json.extract! produto, :id, :titulo, :descricao, :endereco, :latidade, :longitude, :status, :quantidade, :pessoa_id, :created_at, :updated_at
json.url produto_url(produto, format: :json)