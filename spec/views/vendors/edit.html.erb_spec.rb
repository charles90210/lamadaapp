require 'rails_helper'

RSpec.describe "vendors/edit", type: :view do
  before(:each) do
    @vendor = assign(:vendor, Vendor.create!(
      :name => "MyString",
      :contact_person => "MyString",
      :payment => 1,
      :status => "MyString"
    ))
  end

  it "renders the edit vendor form" do
    render

    assert_select "form[action=?][method=?]", vendor_path(@vendor), "post" do

      assert_select "input#vendor_name[name=?]", "vendor[name]"

      assert_select "input#vendor_contact_person[name=?]", "vendor[contact_person]"

      assert_select "input#vendor_payment[name=?]", "vendor[payment]"

      assert_select "input#vendor_status[name=?]", "vendor[status]"
    end
  end
end
