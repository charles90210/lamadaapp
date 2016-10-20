require 'rails_helper'

RSpec.describe "invoices/edit", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      :code => "MyString",
      :vendor => "MyString",
      :tax => "9.99",
      :salesperson => "MyString"
    ))
  end

  it "renders the edit invoice form" do
    render

    assert_select "form[action=?][method=?]", invoice_path(@invoice), "post" do

      assert_select "input#invoice_code[name=?]", "invoice[code]"

      assert_select "input#invoice_vendor[name=?]", "invoice[vendor]"

      assert_select "input#invoice_tax[name=?]", "invoice[tax]"

      assert_select "input#invoice_salesperson[name=?]", "invoice[salesperson]"
    end
  end
end
