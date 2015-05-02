class CreateAtividadeTipos < ActiveRecord::Migration
  def change
    create_table :atividade_tipos do |t|
      t.string :tipo

      t.timestamps null: false
    end
  end
end
