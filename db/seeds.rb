require "csv"

schools_csv = CSV.readlines("db/schools.csv")
schools_csv.shift
schools_csv.each do |row|
  School.create(name: row[1], company: row[2], image: row[3], prefecture: row[4], area_id: row[5], license: row[6], license_2: row[7], license_3: row[8], license_4: row[9], license_5: row[10], address: row[11], curriculum: row[12], point: row[13], group: row[14], other: row[15], created_at: row[16], updated_at: row[17], latitude: row[18] , longitude: row[19])
end

areas_csv = CSV.readlines("db/areas.csv")
areas_csv.shift
areas_csv.each do |row|
  Area.create(area: row[1])
end

reviews_csv = CSV.readlines("db/reviews.csv")
reviews_csv.shift
reviews_csv.each do |row|
  Review.create(nickname: row[1], rate: row[2], Position: row[3], good: row[4], bad: row[5], school_id: row[6], public: row[7], created_at: row[8], updated_at: row[9], area: row[10])
end
