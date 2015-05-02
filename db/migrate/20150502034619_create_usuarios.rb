class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :login
      t.string :senha
      t.string :email
      t.references :perfil, index: true, foreign_key: true
      t.references :usuario_tipo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
