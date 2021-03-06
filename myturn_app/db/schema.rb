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

ActiveRecord::Schema.define(version: 20161125201127) do

  create_table "agendamentos", force: :cascade do |t|
    t.string   "user_id"
    t.string   "Qtd_Trabalhadores"
    t.datetime "Data"
    t.string   "TempoEntrega"
    t.string   "Paletizacao"
    t.string   "ID_TipoArmazenamento"
    t.string   "ID_Fornecedor"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string   "razaosocial"
    t.string   "CNPJ"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_armazenamentos", force: :cascade do |t|
    t.string   "new"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipoarmazenamentos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
