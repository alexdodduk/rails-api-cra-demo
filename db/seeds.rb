# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

COLUMNS = [
  'ndb_no',
  'description',
  'water_g',
  'kcal',
  'protein_g',
  'lipid_total_g',
  'ash_g',
  'carbohydrate_g',
  'fiber_td_g',
  'sugar_g',
  'calcium_mg',
  'iron_mg',
  'magnesium_mg',
  'phosphorus_mg',
  'potassium_mg',
  'sodium_mg',
  'zinc_mg',
  'copper_mg',
  'manganese_mg',
  'selenium_ug',
  'vit_c_mg',
  'thiamin_mg',
  'riboflavin_mg',
  'niacin_mg',
  'panto_acid_mg',
  'vit_b6_mg',
  'folate_tot_ug',
  'folic_acid_ug',
  'food_folate_ug',
  'folate_dfe_ug',
  'choline_tot_mg',
  'vit_b12_ug',
  'vit_a_iu',
  'vit_a_rae',
  'retinol_ug',
  'alpha_carot_ug',
  'beta_carot_ug',
  'beta_crypt_ug',
  'lycopene_ug',
  'lut_and_zea_ug',
  'vit_e_mg',
  'vit_d_ug',
  'vit_d_iu',
  'vit_k_ug',
  'fa_sat_g',
  'fa_mono_g',
  'fa_poly_g',
  'cholestrl_mg',
  'gmwt_1',
  'gmwt_desc1',
  'gmwt_2',
  'gmwt_desc2',
  'refuse_pct',
]

print "\nSeeding..."

current_dir = File.dirname(File.expand_path(__FILE__))
entries = 0
CSV.foreach(File.join(current_dir, 'raw-ndb.csv'), 'r:ISO8859-1').with_index do |row, line_no|
  next if line_no == 0
  print '.' if line_no % 1000 == 0

  entry = {}

  COLUMNS.each_with_index do |column, idx|
    entry[column] = row[idx]
  end

  Food.create!(entry)
  entries += 1
end

print "done."
print "\n#{entries} foods added."
