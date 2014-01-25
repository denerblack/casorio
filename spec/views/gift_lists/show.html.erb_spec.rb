require 'spec_helper'

describe "gift_lists/show" do
  before(:each) do
    @gift_list = assign(:gift_list, stub_model(GiftList,
      :name => "Name",
      :brand => "Brand"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Brand/)
  end
end
