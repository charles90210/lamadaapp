class RemoveSalespersonFromInvoices < ActiveRecord::Migration[5.0]
  def change
    remove_column :invoices, :salesperson, :string
    add_column :invoices, :employee_id, :integer
  end
end
