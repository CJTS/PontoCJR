class CreateAtividades < ActiveRecord::Migration
  def change
    create_table :atividades do |t|
      t.string :descricao
      t.references :atividade_tipo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
