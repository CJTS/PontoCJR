json.array!(@usuario_tipos) do |usuario_tipo|
  json.extract! usuario_tipo, :id, :usuario
  json.url usuario_tipo_url(usuario_tipo, format: :json)
end
