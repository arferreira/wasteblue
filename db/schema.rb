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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130715145052) do

  create_table "legal_entities", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "company_name"
    t.string   "fancy_name"
    t.string   "cnpj"
    t.string   "area_of_activity"
    t.string   "website"
    t.string   "waste_generated"
    t.integer  "waste_id"
    t.string   "type_of_company"
    t.string   "contact_name"
    t.string   "telephone_home"
    t.string   "telephone_cell"
    t.string   "address"
    t.string   "district"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
  end

  add_index "legal_entities", ["email"], :name => "index_legal_entities_on_email", :unique => true
  add_index "legal_entities", ["reset_password_token"], :name => "index_legal_entities_on_reset_password_token", :unique => true

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.date     "when"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sales_ads", :force => true do |t|
    t.string   "title"
    t.string   "category_id"
    t.string   "user_type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "cpf"
    t.string   "telephone_home"
    t.string   "telephone_cell"
    t.string   "address"
    t.string   "district"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "area_of_activity"
    t.string   "waste_generated"
    t.string   "type_of_user"
    t.string   "website"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
