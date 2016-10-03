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

ActiveRecord::Schema.define(version: 20161003064306) do

  create_table "academias", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.integer  "telefone"
    t.integer  "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alunos", force: :cascade do |t|
    t.string   "nome"
    t.integer  "telefone"
    t.string   "endereco"
    t.integer  "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "foto"
  end

  create_table "horarios", force: :cascade do |t|
    t.integer  "hora"
    t.integer  "professor_id"
    t.integer  "academia_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "horarios", ["academia_id"], name: "index_horarios_on_academia_id"
  add_index "horarios", ["professor_id"], name: "index_horarios_on_professor_id"

  create_table "modeis", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "modeis", ["email"], name: "index_modeis_on_email", unique: true
  add_index "modeis", ["reset_password_token"], name: "index_modeis_on_reset_password_token", unique: true

  create_table "professores", force: :cascade do |t|
    t.string   "nome"
    t.integer  "telefone"
    t.string   "endereco"
    t.integer  "cpf"
    t.integer  "academia_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "foto"
  end

  add_index "professores", ["academia_id"], name: "index_professores_on_academia_id"

  create_table "useres", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "useres", ["email"], name: "index_useres_on_email", unique: true
  add_index "useres", ["reset_password_token"], name: "index_useres_on_reset_password_token", unique: true

end
