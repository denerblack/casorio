require 'spec_helper'

describe "guests/edit" do
  before(:each) do
    @guest = assign(:guest, stub_model(Guest,
      :name => "MyString",
      :companions_amount => 1,
      :confirmed => false
    ))
  end

  it "renders the edit guest form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guest_path(@guest), "post" do
      assert_select "input#guest_name[name=?]", "guest[name]"
      assert_select "input#guest_companions_amount[name=?]", "guest[companions_amount]"
      assert_select "input#guest_confirmed[name=?]", "guest[confirmed]"
    end
  end
end
