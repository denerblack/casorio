require 'spec_helper'

describe "expenses/edit" do
  before(:each) do
    @expense = assign(:expense, stub_model(Expense,
      :name => "MyString",
      :amount => 1,
      :unit_value => "MyString",
      :unit => "MyString"
    ))
  end

  it "renders the edit expense form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", expense_path(@expense), "post" do
      assert_select "input#expense_name[name=?]", "expense[name]"
      assert_select "input#expense_amount[name=?]", "expense[amount]"
      assert_select "input#expense_unit_value[name=?]", "expense[unit_value=float]"
      assert_select "input#expense_unit[name=?]", "expense[unit]"
    end
  end
end
