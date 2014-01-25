require 'spec_helper'

describe "gift_lists/index" do
  before(:each) do
    assign(:gift_lists, [
      stub_model(GiftList,
        :name => "Name",
        :brand => "Brand"
      ),
      stub_model(GiftList,
        :name => "Name",
        :brand => "Brand"
      )
    ])
  end

  it "renders a list of gift_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
  end
end
