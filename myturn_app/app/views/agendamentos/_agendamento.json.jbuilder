json.extract! agendamento, :id, :user_id, :Qtd_Trabalhadores, :Data, :TempoEntrega, :Paletizacao, :ID_TipoArmazenamento, :ID_Fornecedor, :created_at, :updated_at
json.url agendamento_url(agendamento, format: :json)