require 'spec_helper'

describe "gift_lists/new" do
  before(:each) do
    assign(:gift_list, stub_model(GiftList,
      :name => "MyString",
      :brand => "MyString"
    ).as_new_record)
  end

  it "renders new gift_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gift_lists_path, "post" do
      assert_select "input#gift_list_name[name=?]", "gift_list[name]"
      assert_select "input#gift_list_brand[name=?]", "gift_list[brand]"
    end
  end
end
