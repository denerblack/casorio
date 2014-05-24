require 'spec_helper'

describe "messages/new" do
  before(:each) do
    assign(:message, stub_model(Message,
      :text => "MyText",
      :author => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", messages_path, "post" do
      assert_select "textarea#message_text[name=?]", "message[text]"
      assert_select "input#message_author[name=?]", "message[author]"
      assert_select "input#message_email[name=?]", "message[email]"
    end
  end
end
