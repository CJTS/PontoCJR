json.array!(@lancamentos) do |lancamento|
  json.extract! lancamento, :id, :checkin, :checkout, :atividade_id, :usuario_id
  json.url lancamento_url(lancamento, format: :json)
end
