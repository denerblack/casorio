require 'spec_helper'

describe Expense do
  describe "total" do
    it "calculates total" do
      expense = FactoryGirl.create(:expense)
      expense.total.should eql 2400
    end

  end

end
