require 'spec_helper'

describe "guests/show" do
  before(:each) do
    @guest = assign(:guest, stub_model(Guest,
      :name => "Name",
      :companions_amount => 1,
      :confirmed => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/false/)
  end
end
