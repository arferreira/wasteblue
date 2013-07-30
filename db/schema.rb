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

ActiveRecord::Schema.define(:version => 20130730160937) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "waste_name"
  end

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

  create_table "purchasing_ads", :force => true do |t|
    t.string   "title"
    t.string   "category_id"
    t.string   "user_type"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "waste_origin"
    t.string   "details"
    t.string   "quantity"
    t.string   "unit"
    t.string   "unit_price"
    t.string   "total_price"
    t.boolean  "show_price"
    t.string   "frequency_removal_waste"
    t.string   "contract_time"
    t.string   "today_waste"
    t.string   "transportation_sample"
    t.string   "waste_address"
    t.string   "postal_code"
    t.string   "address_complete"
    t.string   "district"
    t.string   "state"
    t.string   "city"
    t.string   "current_step"
    t.string   "waste_name"
    t.boolean  "same_address"
    t.string   "picture"
    t.string   "picture_extra"
    t.string   "picture_greatness"
    t.string   "picture_details"
  end

  add_index "purchasing_ads", ["current_step"], :name => "index_purchasing_ads_on_current_step"

  create_table "sales_ads", :force => true do |t|
    t.string   "title"
    t.string   "category_id"
    t.string   "user_type"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "waste_origin"
    t.string   "details"
    t.string   "quantity"
    t.string   "unit"
    t.string   "unit_price"
    t.string   "total_price"
    t.boolean  "show_price"
    t.string   "frequency_removal_waste"
    t.string   "contract_time"
    t.string   "today_waste"
    t.string   "transportation_sample"
    t.string   "waste_address"
    t.string   "postal_code"
    t.string   "address_complete"
    t.string   "district"
    t.string   "state"
    t.string   "city"
    t.string   "current_step"
    t.string   "waste_name"
  end

  add_index "sales_ads", ["current_step"], :name => "index_sales_ads_on_current_step"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
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
