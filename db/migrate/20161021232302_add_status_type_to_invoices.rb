class AddStatusTypeToInvoices < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :status_type, :string
  end
end