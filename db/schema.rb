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

ActiveRecord::Schema.define(version: 20170705082850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_companies", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "website"
    t.string "enquiry_email"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "abouts", id: :serial, force: :cascade do |t|
    t.text "about"
    t.integer "jobseeker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jobseeker_id"], name: "index_abouts_on_jobseeker_id"
  end

  create_table "ahoy_events", id: :serial, force: :cascade do |t|
    t.integer "visit_id"
    t.integer "user_id"
    t.string "name"
    t.text "properties"
    t.datetime "time"
    t.index ["name", "time"], name: "index_ahoy_events_on_name_and_time"
    t.index ["user_id", "name"], name: "index_ahoy_events_on_user_id_and_name"
    t.index ["visit_id", "name"], name: "index_ahoy_events_on_visit_id_and_name"
  end

  create_table "ahoy_messages", id: :serial, force: :cascade do |t|
    t.string "token"
    t.text "to"
    t.integer "user_id"
    t.string "user_type"
    t.string "mailer"
    t.text "subject"
    t.datetime "sent_at"
    t.datetime "opened_at"
    t.datetime "clicked_at"
    t.index ["token"], name: "index_ahoy_messages_on_token"
    t.index ["user_id", "user_type"], name: "index_ahoy_messages_on_user_id_and_user_type"
  end

  create_table "applications", id: :serial, force: :cascade do |t|
    t.integer "jobseeker_id"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employer_id"
    t.integer "sort_order_id"
    t.index ["employer_id"], name: "index_applications_on_employer_id"
    t.index ["job_id"], name: "index_applications_on_job_id"
    t.index ["jobseeker_id", "job_id"], name: "index_applications_on_jobseeker_id_and_job_id", unique: true
    t.index ["jobseeker_id"], name: "index_applications_on_jobseeker_id"
    t.index ["sort_order_id"], name: "index_applications_on_sort_order_id"
  end

  create_table "associates", id: :serial, force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "start_date"
    t.date "end_date"
    t.string "website"
    t.integer "jobseeker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jobseeker_id"], name: "index_associates_on_jobseeker_id"
  end

  create_table "comments", id: :serial, force: :cascade do |t|
    t.text "body"
    t.integer "question_id"
    t.integer "reply_id"
    t.integer "employer_id"
    t.integer "jobseeker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employer_id"], name: "index_comments_on_employer_id"
    t.index ["jobseeker_id"], name: "index_comments_on_jobseeker_id"
    t.index ["question_id"], name: "index_comments_on_question_id"
    t.index ["reply_id"], name: "index_comments_on_reply_id"
  end

  create_table "education_types", id: :serial, force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", id: :serial, force: :cascade do |t|
    t.string "certificate_title"
    t.string "school_name"
    t.string "school_website"
    t.date "start_date"
    t.date "end_date"
    t.integer "education_type_id"
    t.integer "jobseeker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["education_type_id"], name: "index_educations_on_education_type_id"
    t.index ["jobseeker_id"], name: "index_educations_on_jobseeker_id"
  end

  create_table "email_defaults", force: :cascade do |t|
    t.text "body"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "typename", default: false
  end

  create_table "email_templates", force: :cascade do |t|
    t.text "body"
    t.bigint "employer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: false
    t.boolean "emailtype", default: false
    t.string "title"
    t.index ["employer_id"], name: "index_email_templates_on_employer_id"
  end

  create_table "email_types", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employers", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "phonenumber"
    t.integer "job_id"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_employers_on_confirmation_token", unique: true
    t.index ["email"], name: "index_employers_on_email", unique: true
    t.index ["job_id"], name: "index_employers_on_job_id"
    t.index ["reset_password_token"], name: "index_employers_on_reset_password_token", unique: true
  end

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 80
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "job_categories", id: :serial, force: :cascade do |t|
    t.string "title"
    t.boolean "hide", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_job_categories_on_title"
  end

  create_table "job_experiences", force: :cascade do |t|
    t.string "title"
    t.boolean "hide", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_job_experiences_on_title"
  end

  create_table "job_types", id: :serial, force: :cascade do |t|
    t.string "title"
    t.boolean "hide", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_job_types_on_title"
  end

  create_table "jobs", id: :serial, force: :cascade do |t|
    t.string "title"
    t.integer "job_type_id"
    t.integer "job_category_id"
    t.text "description"
    t.string "application_email"
    t.string "location"
    t.string "company_name"
    t.datetime "closing_date"
    t.boolean "active", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employer_id"
    t.boolean "payment_status", default: false
    t.boolean "scraped", default: false
    t.boolean "hide", default: false
    t.integer "payment_id"
    t.string "slug"
    t.text "tags"
    t.decimal "lower_salary_unit"
    t.decimal "higher_salary_unit"
    t.bigint "job_experience_id"
    t.index ["employer_id"], name: "index_jobs_on_employer_id"
    t.index ["job_category_id"], name: "index_jobs_on_job_category_id"
    t.index ["job_experience_id"], name: "index_jobs_on_job_experience_id"
    t.index ["job_type_id"], name: "index_jobs_on_job_type_id"
    t.index ["payment_id"], name: "index_jobs_on_payment_id"
    t.index ["slug"], name: "index_jobs_on_slug"
    t.index ["title"], name: "index_jobs_on_title"
  end

  create_table "jobseekers", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "firstname"
    t.string "lastname"
    t.boolean "is_female", default: false
    t.datetime "date_of_birth"
    t.text "about"
    t.boolean "married"
    t.integer "work_experience_id"
    t.integer "education_id"
    t.integer "about_id"
    t.integer "associate_id"
    t.integer "application_id"
    t.string "fullname"
    t.index ["about_id"], name: "index_jobseekers_on_about_id"
    t.index ["application_id"], name: "index_jobseekers_on_application_id"
    t.index ["associate_id"], name: "index_jobseekers_on_associate_id"
    t.index ["confirmation_token"], name: "index_jobseekers_on_confirmation_token", unique: true
    t.index ["education_id"], name: "index_jobseekers_on_education_id"
    t.index ["email"], name: "index_jobseekers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_jobseekers_on_reset_password_token", unique: true
    t.index ["work_experience_id"], name: "index_jobseekers_on_work_experience_id"
  end

  create_table "mailkick_opt_outs", id: :serial, force: :cascade do |t|
    t.string "email"
    t.integer "user_id"
    t.string "user_type"
    t.boolean "active", default: true, null: false
    t.string "reason"
    t.string "list"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_mailkick_opt_outs_on_email"
    t.index ["user_id", "user_type"], name: "index_mailkick_opt_outs_on_user_id_and_user_type"
  end

  create_table "maily_herald_dispatches", id: :serial, force: :cascade do |t|
    t.string "type", null: false
    t.integer "sequence_id"
    t.integer "list_id", null: false
    t.text "conditions"
    t.text "start_at"
    t.string "mailer_name"
    t.string "name", null: false
    t.string "title"
    t.string "subject"
    t.string "from"
    t.string "state", default: "disabled"
    t.text "template"
    t.integer "absolute_delay"
    t.integer "period"
    t.boolean "override_subscription"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name"], name: "index_maily_herald_dispatches_on_name", unique: true
  end

  create_table "maily_herald_lists", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.string "title"
    t.string "context_name"
  end

  create_table "maily_herald_logs", id: :serial, force: :cascade do |t|
    t.integer "entity_id", null: false
    t.string "entity_type", null: false
    t.string "entity_email"
    t.integer "mailing_id"
    t.string "status", null: false
    t.text "data"
    t.datetime "processing_at"
  end

  create_table "maily_herald_subscriptions", id: :serial, force: :cascade do |t|
    t.integer "entity_id", null: false
    t.integer "list_id", null: false
    t.string "entity_type", null: false
    t.string "token", null: false
    t.text "settings"
    t.text "data"
    t.boolean "active", default: false, null: false
    t.datetime "delivered_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", id: :serial, force: :cascade do |t|
    t.integer "employer_id"
    t.string "card_no"
    t.string "cvv"
    t.string "expiry_year"
    t.string "expiry_month"
    t.float "amount"
    t.float "fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "job_id"
    t.index ["employer_id"], name: "index_payments_on_employer_id"
    t.index ["job_id"], name: "index_payments_on_job_id"
  end

  create_table "questions", id: :serial, force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.text "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "jobseeker_id"
    t.integer "employer_id"
    t.index ["employer_id"], name: "index_questions_on_employer_id"
    t.index ["jobseeker_id"], name: "index_questions_on_jobseeker_id"
  end

  create_table "replies", id: :serial, force: :cascade do |t|
    t.text "body"
    t.integer "jobseeker_id"
    t.integer "employer_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employer_id"], name: "index_replies_on_employer_id"
    t.index ["jobseeker_id"], name: "index_replies_on_jobseeker_id"
    t.index ["question_id"], name: "index_replies_on_question_id"
  end

  create_table "sort_orders", id: :serial, force: :cascade do |t|
    t.string "clause"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taggings", id: :serial, force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.string "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "visits", id: :serial, force: :cascade do |t|
    t.string "visit_token"
    t.string "visitor_token"
    t.string "ip"
    t.text "user_agent"
    t.text "referrer"
    t.text "landing_page"
    t.integer "user_id"
    t.string "referring_domain"
    t.string "search_keyword"
    t.string "browser"
    t.string "os"
    t.string "device_type"
    t.integer "screen_height"
    t.integer "screen_width"
    t.string "country"
    t.string "region"
    t.string "city"
    t.string "postal_code"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "utm_source"
    t.string "utm_medium"
    t.string "utm_term"
    t.string "utm_content"
    t.string "utm_campaign"
    t.datetime "started_at"
    t.index ["user_id"], name: "index_visits_on_user_id"
    t.index ["visit_token"], name: "index_visits_on_visit_token", unique: true
  end

  create_table "work_experiences", id: :serial, force: :cascade do |t|
    t.string "company_name"
    t.string "job_title"
    t.text "about_role"
    t.string "company_website"
    t.date "start_date"
    t.date "end_date"
    t.integer "jobseeker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jobseeker_id"], name: "index_work_experiences_on_jobseeker_id"
  end

  add_foreign_key "abouts", "jobseekers"
  add_foreign_key "applications", "employers"
  add_foreign_key "applications", "jobs"
  add_foreign_key "applications", "jobseekers"
  add_foreign_key "applications", "sort_orders"
  add_foreign_key "associates", "jobseekers"
  add_foreign_key "comments", "employers"
  add_foreign_key "comments", "jobseekers"
  add_foreign_key "comments", "questions"
  add_foreign_key "comments", "replies"
  add_foreign_key "educations", "education_types"
  add_foreign_key "educations", "jobseekers"
  add_foreign_key "email_templates", "employers"
  add_foreign_key "employers", "jobs"
  add_foreign_key "jobs", "employers"
  add_foreign_key "jobs", "job_experiences"
  add_foreign_key "jobs", "payments"
  add_foreign_key "jobseekers", "abouts"
  add_foreign_key "jobseekers", "applications"
  add_foreign_key "jobseekers", "associates"
  add_foreign_key "jobseekers", "educations"
  add_foreign_key "jobseekers", "work_experiences"
  add_foreign_key "payments", "employers"
  add_foreign_key "payments", "jobs"
  add_foreign_key "questions", "employers"
  add_foreign_key "questions", "jobseekers"
  add_foreign_key "replies", "employers"
  add_foreign_key "replies", "jobseekers"
  add_foreign_key "replies", "questions"
  add_foreign_key "work_experiences", "jobseekers"
end
