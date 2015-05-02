class CreateUsuarioTipos < ActiveRecord::Migration
  def change
    create_table :usuario_tipos do |t|
      t.string :usuario

      t.timestamps null: false
    end
  end
end
