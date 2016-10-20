json.extract! invoice, :id, :date, :code, :vendor, :tax, :salesperson, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)