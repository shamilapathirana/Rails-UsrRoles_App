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

ActiveRecord::Schema.define(version: 20170317033329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "usr_contact_roles", force: :cascade do |t|
    t.integer  "usr_role_id"
    t.integer  "usr_contact_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["usr_contact_id"], name: "index_usr_contact_roles_on_usr_contact_id", using: :btree
    t.index ["usr_role_id"], name: "index_usr_contact_roles_on_usr_role_id", using: :btree
  end

  create_table "usr_contacts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usr_permissions", force: :cascade do |t|
    t.string   "permission_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "usr_role_permissions", force: :cascade do |t|
    t.integer  "usr_role_id"
    t.integer  "usr_permission_id"
    t.string   "value"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["usr_permission_id"], name: "index_usr_role_permissions_on_usr_permission_id", using: :btree
    t.index ["usr_role_id"], name: "index_usr_role_permissions_on_usr_role_id", using: :btree
  end

  create_table "usr_roles", force: :cascade do |t|
    t.string   "role_name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
