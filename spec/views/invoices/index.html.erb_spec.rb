require 'rails_helper'

RSpec.describe "invoices/index", type: :view do
  before(:each) do
    assign(:invoices, [
      Invoice.create!(
        :code => "Code",
        :vendor => "Vendor",
        :tax => "9.99",
        :salesperson => "Salesperson"
      ),
      Invoice.create!(
        :code => "Code",
        :vendor => "Vendor",
        :tax => "9.99",
        :salesperson => "Salesperson"
      )
    ])
  end

  it "renders a list of invoices" do
    render
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Vendor".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Salesperson".to_s, :count => 2
  end
end
