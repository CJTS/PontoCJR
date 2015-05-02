json.array!(@atividades) do |atividade|
  json.extract! atividade, :id, :descricao, :atividade_tipo_id
  json.url atividade_url(atividade, format: :json)
end
