require 'rails_helper'

RSpec.describe "invoices/show", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      :code => "Code",
      :vendor => "Vendor",
      :tax => "9.99",
      :salesperson => "Salesperson"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Vendor/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Salesperson/)
  end
end
