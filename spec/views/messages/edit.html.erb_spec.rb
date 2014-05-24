require 'spec_helper'

describe "messages/edit" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :text => "MyText",
      :author => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", message_path(@message), "post" do
      assert_select "textarea#message_text[name=?]", "message[text]"
      assert_select "input#message_author[name=?]", "message[author]"
      assert_select "input#message_email[name=?]", "message[email]"
    end
  end
end
