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

ActiveRecord::Schema.define(version: 20150622200612) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forms", force: :cascade do |t|
    t.integer "user_id"
    t.string  "gh_ami_cc_only",      default: "0"
    t.string  "gh_ami_cc_plus",      default: "0"
    t.string  "gh_ami_reg_med",      default: "0"
    t.string  "gh_ami_invasive",     default: "0"
    t.string  "gh_ami_respirator",   default: "0"
    t.string  "gh_ami_dialysis",     default: "0"
    t.string  "gh_ami_cpr",          default: "0"
    t.string  "gh_bi_cc_only",       default: "0"
    t.string  "gh_bi_cc_plus",       default: "0"
    t.string  "gh_bi_reg_med",       default: "0"
    t.string  "gh_bi_invasive",      default: "0"
    t.string  "gh_bi_respirator",    default: "0"
    t.string  "gh_bi_dialysis",      default: "0"
    t.string  "gh_bi_cpr",           default: "0"
    t.string  "dh_ami_cc_only",      default: "0"
    t.string  "dh_ami_cc_plus",      default: "0"
    t.string  "dh_ami_reg_med",      default: "0"
    t.string  "dh_ami_invasive",     default: "0"
    t.string  "dh_ami_respirator",   default: "0"
    t.string  "dh_ami_dialysis",     default: "0"
    t.string  "dh_ami_cpr",          default: "0"
    t.string  "dh_bi_cc_only",       default: "0"
    t.string  "dh_bi_cc_plus",       default: "0"
    t.string  "dh_bi_reg_med",       default: "0"
    t.string  "dh_bi_invasive",      default: "0"
    t.string  "dh_bi_respirator",    default: "0"
    t.string  "dh_bi_dialysis",      default: "0"
    t.string  "dh_bi_cpr",           default: "0"
    t.string  "esmc_ami_cc_only",    default: "0"
    t.string  "esmc_ami_cc_plus",    default: "0"
    t.string  "esmc_ami_reg_med",    default: "0"
    t.string  "esmc_ami_invasive",   default: "0"
    t.string  "esmc_ami_respirator", default: "0"
    t.string  "esmc_ami_dialysis",   default: "0"
    t.string  "esmc_ami_cpr",        default: "0"
    t.string  "esmc_bi_cc_only",     default: "0"
    t.string  "esmc_bi_cc_plus",     default: "0"
    t.string  "esmc_bi_reg_med",     default: "0"
    t.string  "esmc_bi_invasive",    default: "0"
    t.string  "esmc_bi_respirator",  default: "0"
    t.string  "esmc_bi_dialysis",    default: "0"
    t.string  "esmc_bi_cpr",         default: "0"
    t.string  "nhi_ami_cc_only",     default: "0"
    t.string  "nhi_ami_cc_plus",     default: "0"
    t.string  "nhi_ami_reg_med",     default: "0"
    t.string  "nhi_ami_invasive",    default: "0"
    t.string  "nhi_ami_respirator",  default: "0"
    t.string  "nhi_ami_dialysis",    default: "0"
    t.string  "nhi_ami_cpr",         default: "0"
    t.string  "nhi_bi_cc_only",      default: "0"
    t.string  "nhi_bi_cc_plus",      default: "0"
    t.string  "nhi_bi_reg_med",      default: "0"
    t.string  "nhi_bi_invasive",     default: "0"
    t.string  "nhi_bi_respirator",   default: "0"
    t.string  "nhi_bi_dialysis",     default: "0"
    t.string  "nhi_bi_cpr",          default: "0"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "forms", "users"
end
