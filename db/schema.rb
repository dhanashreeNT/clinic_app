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

ActiveRecord::Schema.define(:version => 20141211090657) do

  create_table "admin_appointments", :force => true do |t|
    t.integer  "admin_clinic_id"
    t.integer  "admin_service_id"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "address"
    t.string   "email"
    t.string   "contact_num"
    t.string   "appdatetime"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "admin_appointments", ["admin_clinic_id"], :name => "index_admin_appointments_on_admin_clinic_id"
  add_index "admin_appointments", ["admin_service_id"], :name => "index_admin_appointments_on_admin_service_id"

  create_table "admin_clinics", :force => true do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "city"
    t.string   "contact_num"
    t.text     "address"
    t.string   "email"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "clinic_logo_file_name"
    t.string   "clinic_logo_content_type"
    t.integer  "clinic_logo_file_size"
    t.datetime "clinic_logo_updated_at"
  end

  create_table "admin_doctors", :force => true do |t|
    t.integer  "admin_clinic_id"
    t.string   "name"
    t.text     "about_you"
    t.string   "education"
    t.string   "profile_pic_file_name"
    t.string   "profile_pic_content_type"
    t.integer  "profile_pic_file_size"
    t.datetime "profile_pic_updated_at"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "admin_doctors", ["admin_clinic_id"], :name => "index_admin_doctors_on_admin_clinic_id"

  create_table "admin_galleries", :force => true do |t|
    t.integer  "admin_clinic_id"
    t.string   "galleryimage_file_name"
    t.string   "galleryimage_content_type"
    t.integer  "galleryimage_file_size"
    t.datetime "galleryimage_updated_at"
    t.string   "description"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "admin_galleries", ["admin_clinic_id"], :name => "index_admin_galleries_on_admin_clinic_id"

  create_table "admin_pages", :force => true do |t|
    t.integer  "admin_clinic_id"
    t.string   "name"
    t.boolean  "status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "admin_pages", ["admin_clinic_id"], :name => "index_admin_pages_on_admin_clinic_id"

  create_table "admin_services", :force => true do |t|
    t.integer  "admin_clinic_id"
    t.string   "name"
    t.text     "description"
    t.string   "servimage_file_name"
    t.string   "servimage_content_type"
    t.integer  "servimage_file_size"
    t.datetime "servimage_updated_at"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "admin_services", ["admin_clinic_id"], :name => "index_admin_services_on_admin_clinic_id"

  create_table "admin_timeofappointments", :force => true do |t|
    t.integer  "admin_clinic_id"
    t.string   "toa"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "admin_timeofappointments", ["admin_clinic_id"], :name => "index_admin_timeofappointments_on_admin_clinic_id"

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

end
