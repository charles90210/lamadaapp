class Vendor < ApplicationRecord
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Vendor.create! row.to_hash
    end
  end

end
