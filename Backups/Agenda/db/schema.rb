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

ActiveRecord::Schema.define(version: 20161227202614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "interesses", force: :cascade do |t|
    t.string   "status"
    t.integer  "produto_id"
    t.integer  "pessoa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pessoa_id"], name: "index_interesses_on_pessoa_id", using: :btree
    t.index ["produto_id"], name: "index_interesses_on_produto_id", using: :btree
  end

  create_table "pessoas", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "titulo"
    t.string   "descricao"
    t.string   "endereco"
    t.float    "latidade"
    t.float    "longitude"
    t.string   "status"
    t.integer  "quantidade"
    t.integer  "pessoa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "foto"
    t.index ["pessoa_id"], name: "index_produtos_on_pessoa_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "pessoa_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["pessoa_id"], name: "index_users_on_pessoa_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "interesses", "pessoas"
  add_foreign_key "interesses", "produtos"
  add_foreign_key "produtos", "pessoas"
  add_foreign_key "users", "pessoas"
end
