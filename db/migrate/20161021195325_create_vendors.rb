class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :contact_person
      t.integer :payment
      t.string :status

      t.timestamps
    end
  end
end
