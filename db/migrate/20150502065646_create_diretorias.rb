class CreateDiretorias < ActiveRecord::Migration
  def change
    create_table :diretorias do |t|
      t.string :sigla_diretoria
      t.string :nome_diretoria

      t.timestamps null: false
    end
  end
end
