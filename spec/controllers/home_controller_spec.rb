require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'gifts'" do
    it "returns http success" do
      get 'gifts'
      response.should be_success
    end
  end

  describe "GET 'place'" do
    it "returns http success" do
      get 'place'
      response.should be_success
    end
  end

end
