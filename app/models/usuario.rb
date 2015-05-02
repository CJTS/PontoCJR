class Usuario < ActiveRecord::Base
  belongs_to :perfil
  belongs_to :usuario_tipo
  has_secure_password

end
