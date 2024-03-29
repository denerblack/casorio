require 'spec_helper'

describe "messages/index" do
  before(:each) do
    assign(:messages, [
      stub_model(Message,
        :text => "MyText",
        :author => "Author",
        :email => "Email"
      ),
      stub_model(Message,
        :text => "MyText",
        :author => "Author",
        :email => "Email"
      )
    ])
  end

  it "renders a list of messages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
