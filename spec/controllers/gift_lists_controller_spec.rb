require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe GiftListsController do

  # This should return the minimal set of attributes required to create a valid
  # GiftList. As you add validations to GiftList, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GiftListsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all gift_lists as @gift_lists" do
      gift_list = GiftList.create! valid_attributes
      get :index, {}, valid_session
      assigns(:gift_lists).should eq([gift_list])
    end
  end

  describe "GET show" do
    it "assigns the requested gift_list as @gift_list" do
      gift_list = GiftList.create! valid_attributes
      get :show, {:id => gift_list.to_param}, valid_session
      assigns(:gift_list).should eq(gift_list)
    end
  end

  describe "GET new" do
    it "assigns a new gift_list as @gift_list" do
      get :new, {}, valid_session
      assigns(:gift_list).should be_a_new(GiftList)
    end
  end

  describe "GET edit" do
    it "assigns the requested gift_list as @gift_list" do
      gift_list = GiftList.create! valid_attributes
      get :edit, {:id => gift_list.to_param}, valid_session
      assigns(:gift_list).should eq(gift_list)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new GiftList" do
        expect {
          post :create, {:gift_list => valid_attributes}, valid_session
        }.to change(GiftList, :count).by(1)
      end

      it "assigns a newly created gift_list as @gift_list" do
        post :create, {:gift_list => valid_attributes}, valid_session
        assigns(:gift_list).should be_a(GiftList)
        assigns(:gift_list).should be_persisted
      end

      it "redirects to the created gift_list" do
        post :create, {:gift_list => valid_attributes}, valid_session
        response.should redirect_to(GiftList.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved gift_list as @gift_list" do
        # Trigger the behavior that occurs when invalid params are submitted
        GiftList.any_instance.stub(:save).and_return(false)
        post :create, {:gift_list => { "name" => "invalid value" }}, valid_session
        assigns(:gift_list).should be_a_new(GiftList)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        GiftList.any_instance.stub(:save).and_return(false)
        post :create, {:gift_list => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested gift_list" do
        gift_list = GiftList.create! valid_attributes
        # Assuming there are no other gift_lists in the database, this
        # specifies that the GiftList created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        GiftList.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => gift_list.to_param, :gift_list => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested gift_list as @gift_list" do
        gift_list = GiftList.create! valid_attributes
        put :update, {:id => gift_list.to_param, :gift_list => valid_attributes}, valid_session
        assigns(:gift_list).should eq(gift_list)
      end

      it "redirects to the gift_list" do
        gift_list = GiftList.create! valid_attributes
        put :update, {:id => gift_list.to_param, :gift_list => valid_attributes}, valid_session
        response.should redirect_to(gift_list)
      end
    end

    describe "with invalid params" do
      it "assigns the gift_list as @gift_list" do
        gift_list = GiftList.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        GiftList.any_instance.stub(:save).and_return(false)
        put :update, {:id => gift_list.to_param, :gift_list => { "name" => "invalid value" }}, valid_session
        assigns(:gift_list).should eq(gift_list)
      end

      it "re-renders the 'edit' template" do
        gift_list = GiftList.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        GiftList.any_instance.stub(:save).and_return(false)
        put :update, {:id => gift_list.to_param, :gift_list => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested gift_list" do
      gift_list = GiftList.create! valid_attributes
      expect {
        delete :destroy, {:id => gift_list.to_param}, valid_session
      }.to change(GiftList, :count).by(-1)
    end

    it "redirects to the gift_lists list" do
      gift_list = GiftList.create! valid_attributes
      delete :destroy, {:id => gift_list.to_param}, valid_session
      response.should redirect_to(gift_lists_url)
    end
  end

end
