require 'rails_helper'

RSpec.describe "vendors/index", type: :view do
  before(:each) do
    assign(:vendors, [
      Vendor.create!(
        :name => "Name",
        :contact_person => "Contact Person",
        :payment => 2,
        :status => "Status"
      ),
      Vendor.create!(
        :name => "Name",
        :contact_person => "Contact Person",
        :payment => 2,
        :status => "Status"
      )
    ])
  end

  it "renders a list of vendors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Person".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
