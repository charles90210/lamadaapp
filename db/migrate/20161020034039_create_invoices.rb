class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.datetime :date
      t.string :code
      t.string :vendor
      t.decimal :tax
      t.string :salesperson

      t.timestamps
    end
  end
end
