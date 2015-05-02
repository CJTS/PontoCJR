class CreateLancamentos < ActiveRecord::Migration
  def change
    create_table :lancamentos do |t|
      t.timestamp :checkin
      t.timestamp :checkout
      t.references :atividade, index: true, foreign_key: true
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
