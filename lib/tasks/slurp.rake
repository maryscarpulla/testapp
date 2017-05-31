namespace :slurp do
  desc "TODO"
  task winevarietals: :environment do

    require "csv"
    csv_text = File.read(Rails.root.join("lib", "csvs", "WineVarietals.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Winevarietal.new
      t.varietal = row["varietal"]
      t.save
      puts "#{t.varietal} saved"
      
    end



  end

end
