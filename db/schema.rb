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

ActiveRecord::Schema.define(version: 2022_07_26_084545) do

  create_table "foods", force: :cascade do |t|
    t.integer "ndb_no"
    t.string "description"
    t.float "water_g"
    t.float "kcal"
    t.float "protein_g"
    t.float "lipid_total_g"
    t.float "ash_g"
    t.float "carbohydrate_g"
    t.float "fiber_td_g"
    t.float "sugar_g"
    t.float "calcium_mg"
    t.float "iron_mg"
    t.float "magnesium_mg"
    t.float "phosphorus_mg"
    t.float "potassium_mg"
    t.float "sodium_mg"
    t.float "zinc_mg"
    t.float "copper_mg"
    t.float "manganese_mg"
    t.float "selenium_ug"
    t.float "vit_c_mg"
    t.float "thiamin_mg"
    t.float "riboflavin_mg"
    t.float "niacin_mg"
    t.float "panto_acid_mg"
    t.float "vit_b6_mg"
    t.float "folate_tot_ug"
    t.float "folic_acid_ug"
    t.float "food_folate_ug"
    t.float "folate_dfe_ug"
    t.float "choline_tot_mg"
    t.float "vit_b12_ug"
    t.float "vit_a_iu"
    t.float "vit_a_rae"
    t.float "retinol_ug"
    t.float "alpha_carot_ug"
    t.float "beta_carot_ug"
    t.float "beta_crypt_ug"
    t.float "lycopene_ug"
    t.float "lut_and_zea_ug"
    t.float "vit_e_mg"
    t.float "vit_d_ug"
    t.float "vit_d_iu"
    t.float "vit_k_ug"
    t.float "fa_sat_g"
    t.float "fa_mono_g"
    t.float "fa_poly_g"
    t.float "cholestrl_mg"
    t.float "gmwt_1"
    t.string "gmwt_desc1"
    t.float "gmwt_2"
    t.string "gmwt_desc2"
    t.float "refuse_pct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
