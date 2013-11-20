require 'spec_helper'

describe "guests/index" do
  before(:each) do
    assign(:guests, [
      stub_model(Guest,
        :name => "Name",
        :companions_amount => 1,
        :confirmed => false
      ),
      stub_model(Guest,
        :name => "Name",
        :companions_amount => 1,
        :confirmed => false
      )
    ])
  end

  it "renders a list of guests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
