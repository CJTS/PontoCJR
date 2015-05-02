json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :login, :password, :email, :perfil_id, :usuario_tipo_id
  json.url usuario_url(usuario, format: :json)
end
