json.array!(@atividade_tipos) do |atividade_tipo|
  json.extract! atividade_tipo, :id, :tipo
  json.url atividade_tipo_url(atividade_tipo, format: :json)
end
