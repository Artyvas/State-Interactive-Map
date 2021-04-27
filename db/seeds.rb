require "csv"

puts "Creating States...."

csv_text = File.read(Rails.root.join("db", "abbreviations.csv"))

csv = CSV.parse(csv_text, :headers => true, quote_char: "\x00")

data = csv.map do |row|
  {
    name: row["State"],
    code: row["Code"],
    created_at: Time.now,
    updated_at: Time.now,
  }
end
State.insert_all!(data)
