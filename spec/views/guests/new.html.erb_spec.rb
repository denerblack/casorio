require 'spec_helper'

describe "guests/new" do
  before(:each) do
    assign(:guest, stub_model(Guest,
      :name => "MyString",
      :companions_amount => 1,
      :confirmed => false
    ).as_new_record)
  end

  it "renders new guest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guests_path, "post" do
      assert_select "input#guest_name[name=?]", "guest[name]"
      assert_select "input#guest_companions_amount[name=?]", "guest[companions_amount]"
      assert_select "input#guest_confirmed[name=?]", "guest[confirmed]"
    end
  end
end
