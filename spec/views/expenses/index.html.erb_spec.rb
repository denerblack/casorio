require 'spec_helper'

describe "expenses/index" do
  before(:each) do
    assign(:expenses, [
      stub_model(Expense,
        :name => "Name",
        :amount => 1,
        :unit_value => "Unit Value=Float",
        :unit => "Unit"
      ),
      stub_model(Expense,
        :name => "Name",
        :amount => 1,
        :unit_value => "Unit Value=Float",
        :unit => "Unit"
      )
    ])
  end

  it "renders a list of expenses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Unit Value=Float".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
  end
end
