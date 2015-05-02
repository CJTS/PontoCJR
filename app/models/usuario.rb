class Usuario < ActiveRecord::Base
  belongs_to :perfil
  belongs_to :usuario_tipo
end
