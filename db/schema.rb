# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_09_08_014700) do
  create_table "addresses", force: :cascade do |t|
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "address_line_3"
    t.string "city_or_town"
    t.string "state"
    t.string "postal_code"
    t.string "country"
    t.string "region"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attendances", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "event_id", null: false
    t.datetime "attended_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_attendances_on_event_id"
    t.index ["person_id"], name: "index_attendances_on_person_id"
  end

  create_table "auth_tokens", force: :cascade do |t|
    t.integer "person_id", null: false
    t.string "token"
    t.datetime "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_auth_tokens_on_person_id"
  end

  create_table "cotfc_groups", force: :cascade do |t|
    t.string "host"
    t.string "subject"
    t.string "day"
    t.string "time"
    t.string "location"
    t.boolean "child_friendly"
    t.string "intended_audience"
    t.string "form_url"
    t.string "photo_url"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: true
  end

  create_table "events", force: :cascade do |t|
    t.datetime "start_at"
    t.datetime "end_at"
    t.string "recurrence_rule"
    t.integer "recurrence_frequency"
    t.date "recurrence_end_date"
    t.datetime "postponed_until"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", force: :cascade do |t|
    t.string "name"
    t.integer "address_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_families_on_address_id"
  end

  create_table "family_members", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "family_id", null: false
    t.boolean "is_parent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_family_members_on_family_id"
    t.index ["person_id"], name: "index_family_members_on_person_id"
  end

  create_table "group_members", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "group_id", null: false
    t.boolean "is_leader"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_members_on_group_id"
    t.index ["person_id"], name: "index_group_members_on_person_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "created_by_type", null: false
    t.integer "created_by_id", null: false
    t.integer "step_id", null: false
    t.integer "event_id", null: false
    t.boolean "is_private"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_by_type", "created_by_id"], name: "index_groups_on_created_by"
    t.index ["event_id"], name: "index_groups_on_event_id"
    t.index ["step_id"], name: "index_groups_on_step_id"
  end

  create_table "guardianships", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "guardian_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guardian_id"], name: "index_guardianships_on_guardian_id"
    t.index ["person_id"], name: "index_guardianships_on_person_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.string "email"
    t.integer "invited_by_id", null: false
    t.string "token"
    t.string "status"
    t.datetime "expires_at"
    t.string "invitable_type", null: false
    t.integer "invitable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invitable_type", "invitable_id"], name: "index_invitations_on_invitable"
    t.index ["invited_by_id"], name: "index_invitations_on_invited_by_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "messageable_type", null: false
    t.integer "messageable_id", null: false
    t.integer "parent_message_id", null: false
    t.integer "sender_id", null: false
    t.text "content"
    t.integer "reply_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["messageable_type", "messageable_id"], name: "index_messages_on_messageable"
    t.index ["parent_message_id"], name: "index_messages_on_parent_message_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
  end

  create_table "organization_people", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "organization_id", null: false
    t.string "title"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_organization_people_on_organization_id"
    t.index ["person_id"], name: "index_organization_people_on_person_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.integer "parent_organization_id", null: false
    t.integer "address_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_organizations_on_address_id"
    t.index ["parent_organization_id"], name: "index_organizations_on_parent_organization_id"
  end

  create_table "paths", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "created_by_type", null: false
    t.integer "created_by_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_by_type", "created_by_id"], name: "index_paths_on_created_by"
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.integer "gender"
    t.date "date_of_birth"
    t.integer "address_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_people_on_address_id"
  end

  create_table "steps", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "category"
    t.integer "path_id", null: false
    t.text "resources"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["path_id"], name: "index_steps_on_path_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "person_id", null: false
    t.string "stripe_customer_id"
    t.string "stripe_subscription_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_subscriptions_on_person_id"
  end

  add_foreign_key "attendances", "events"
  add_foreign_key "attendances", "people"
  add_foreign_key "auth_tokens", "people"
  add_foreign_key "families", "addresses"
  add_foreign_key "family_members", "families"
  add_foreign_key "family_members", "people"
  add_foreign_key "group_members", "groups"
  add_foreign_key "group_members", "people"
  add_foreign_key "groups", "events"
  add_foreign_key "groups", "steps"
  add_foreign_key "guardianships", "guardians"
  add_foreign_key "guardianships", "people"
  add_foreign_key "invitations", "invited_bies"
  add_foreign_key "messages", "parent_messages"
  add_foreign_key "messages", "senders"
  add_foreign_key "organization_people", "organizations"
  add_foreign_key "organization_people", "people"
  add_foreign_key "organizations", "addresses"
  add_foreign_key "organizations", "parent_organizations"
  add_foreign_key "people", "addresses"
  add_foreign_key "steps", "paths"
  add_foreign_key "subscriptions", "people"
end
