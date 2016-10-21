class Vendor < ApplicationRecord
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Vendor.create! row.to_hash
    end
  end

  #Adding method to our model to enable us downlaod data as csv files
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |vendor|
        csv << vendor.attributes.values_at(*column_names)
      end
    end
  end

end
