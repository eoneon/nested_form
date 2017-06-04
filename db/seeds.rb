require 'csv'

CSV.foreach('db/mounting.csv', :headers => false) do |row|
  Mounting.create!(row.to_hash)
end
