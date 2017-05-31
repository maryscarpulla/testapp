namespace :slurp do
  desc "Add a starter set of varietals"
  task varietals: :environment do

    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "varietals.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1:utf-8")
    csv.each do |row|
      t = Varietal.new
      t.varietal_name = row["Varietal"]
      t.save
      puts "#{t.varietal_name} saved"

    end

  end
end
