require 'rails_helper'

RSpec.describe "invoices/new", type: :view do
  before(:each) do
    assign(:invoice, Invoice.new(
      :code => "MyString",
      :vendor => "MyString",
      :tax => "9.99",
      :salesperson => "MyString"
    ))
  end

  it "renders new invoice form" do
    render

    assert_select "form[action=?][method=?]", invoices_path, "post" do

      assert_select "input#invoice_code[name=?]", "invoice[code]"

      assert_select "input#invoice_vendor[name=?]", "invoice[vendor]"

      assert_select "input#invoice_tax[name=?]", "invoice[tax]"

      assert_select "input#invoice_salesperson[name=?]", "invoice[salesperson]"
    end
  end
end
