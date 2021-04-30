require "csv"

puts "Creating States...."

csv_text = File.read(Rails.root.join("db", "complete_state_data.csv"))

csv = CSV.parse(csv_text, :headers => true, encoding: "ISO-8859-1")

data = csv.map do |row|
  {
    name: row["state"],
    code: row["Code"],
    med_inc: row["median_household_income"],
    per_unemp_seas: row["share_unemployed_seasonal"],
    per_pop_metro: row["share_population_in_metro_areas"],
    per_pop_high: row["share_population_with_high_school_degree"],
    created_at: Time.now,
    updated_at: Time.now,
  }
end
State.insert_all!(data)
