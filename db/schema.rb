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

ActiveRecord::Schema.define(version: 20_211_122_144_443) do
  create_table 'contacts', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'email', null: false
    t.string 'phone_number', null: false
    t.text 'message', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'space_id'
  end

  create_table 'guests', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.string 'last_name', null: false
    t.string 'first_name', null: false
    t.string 'last_name_kana', null: false
    t.string 'first_name_kana', null: false
    t.string 'postal_code', null: false
    t.string 'address', null: false
    t.string 'telephone_number', null: false
    t.boolean 'is_active', default: true, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_guests_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_guests_on_reset_password_token', unique: true
  end

  create_table 'hosts', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.string 'name', null: false
    t.string 'phone_number', null: false
    t.boolean 'is_active', default: true, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_hosts_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_hosts_on_reset_password_token', unique: true
  end

  create_table 'reservations', force: :cascade do |t|
    t.integer 'guest_id'
    t.string 'people'
    t.time 'begin_time'
    t.time 'finish_time'
    t.integer 'hourly_rate'
    t.integer 'billing_amount'
    t.integer 'payment'
    t.boolean 'is_active', default: true
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'space_id'
    t.date 'use_date'
  end

  create_table 'spaces', force: :cascade do |t|
    t.integer 'host_id'
    t.string 'name'
    t.string 'address'
    t.text 'detail'
    t.string 'image_id'
    t.integer 'capacity'
    t.time 'open_time'
    t.time 'close_time'
    t.integer 'hourly_rate'
    t.boolean 'is_active', default: true
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
