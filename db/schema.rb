# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150502034631) do

  create_table "atividade_tipos", force: :cascade do |t|
    t.string   "tipo",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "atividades", force: :cascade do |t|
    t.string   "descricao",         limit: 255
    t.integer  "atividade_tipo_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "atividades", ["atividade_tipo_id"], name: "index_atividades_on_atividade_tipo_id", using: :btree

  create_table "lancamentos", force: :cascade do |t|
    t.datetime "checkin"
    t.datetime "checkout"
    t.integer  "atividade_id", limit: 4
    t.integer  "usuario_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "lancamentos", ["atividade_id"], name: "index_lancamentos_on_atividade_id", using: :btree
  add_index "lancamentos", ["usuario_id"], name: "index_lancamentos_on_usuario_id", using: :btree

  create_table "perfis", force: :cascade do |t|
    t.string   "tipo",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "usuario_tipos", force: :cascade do |t|
    t.string   "usuario",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome",            limit: 255
    t.string   "login",           limit: 255
    t.string   "senha",           limit: 255
    t.string   "email",           limit: 255
    t.integer  "perfil_id",       limit: 4
    t.integer  "usuario_tipo_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "usuarios", ["perfil_id"], name: "index_usuarios_on_perfil_id", using: :btree
  add_index "usuarios", ["usuario_tipo_id"], name: "index_usuarios_on_usuario_tipo_id", using: :btree

  add_foreign_key "atividades", "atividade_tipos"
  add_foreign_key "lancamentos", "atividades"
  add_foreign_key "lancamentos", "usuarios"
  add_foreign_key "usuarios", "perfis"
  add_foreign_key "usuarios", "usuario_tipos"
end
