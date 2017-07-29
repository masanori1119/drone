require "csv"

schools_csv = CSV.readlines("db/schools.csv")
schools_csv.shift
schools_csv.each do |row|
  School.create(name: row[1], company: row[2], image: row[3], prefecture: row[4], area_id: row[5], license: row[6], license_2: row[7], license_3: row[8], license_4: row[9], license5: row[10], address: row[11], curriculum: row[12], point: row[13], group: row[14], other: row[15], created_at: row[16], updated_at: row[17], latitude: row[18] , longitude: row[19])
end