json.array!(@diretorias) do |diretoria|
  json.extract! diretoria, :id, :sigla_diretoria, :nome_diretoria
  json.url diretoria_url(diretoria, format: :json)
end
