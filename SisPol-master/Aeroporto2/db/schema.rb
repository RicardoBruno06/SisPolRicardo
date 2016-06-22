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

ActiveRecord::Schema.define(version: 20160617163411) do

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "cpf",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "cnpj",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "passages", force: :cascade do |t|
    t.string   "font",       limit: 255
    t.string   "destiny",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "client_id",  limit: 4
    t.integer  "company_id", limit: 4
    t.integer  "route_id",   limit: 4
  end

  add_index "passages", ["client_id"], name: "index_passages_on_client_id", using: :btree
  add_index "passages", ["company_id"], name: "index_passages_on_company_id", using: :btree
  add_index "passages", ["route_id"], name: "index_passages_on_route_id", using: :btree

  create_table "routes", force: :cascade do |t|
    t.string   "hour",       limit: 255
    t.string   "price",      limit: 255
    t.string   "status",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "passages", "clients"
  add_foreign_key "passages", "companies"
  add_foreign_key "passages", "routes"
end
