require 'rails_helper'

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

RSpec.describe TribesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Tribe. As you add validations to Tribe, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TribesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all tribes as @tribes" do
      tribe = Tribe.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:tribes)).to eq([tribe])
    end
  end

  describe "GET show" do
    it "assigns the requested tribe as @tribe" do
      tribe = Tribe.create! valid_attributes
      get :show, {:id => tribe.to_param}, valid_session
      expect(assigns(:tribe)).to eq(tribe)
    end
  end

  describe "GET new" do
    it "assigns a new tribe as @tribe" do
      get :new, {}, valid_session
      expect(assigns(:tribe)).to be_a_new(Tribe)
    end
  end

  describe "GET edit" do
    it "assigns the requested tribe as @tribe" do
      tribe = Tribe.create! valid_attributes
      get :edit, {:id => tribe.to_param}, valid_session
      expect(assigns(:tribe)).to eq(tribe)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Tribe" do
        expect {
          post :create, {:tribe => valid_attributes}, valid_session
        }.to change(Tribe, :count).by(1)
      end

      it "assigns a newly created tribe as @tribe" do
        post :create, {:tribe => valid_attributes}, valid_session
        expect(assigns(:tribe)).to be_a(Tribe)
        expect(assigns(:tribe)).to be_persisted
      end

      it "redirects to the created tribe" do
        post :create, {:tribe => valid_attributes}, valid_session
        expect(response).to redirect_to(Tribe.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tribe as @tribe" do
        post :create, {:tribe => invalid_attributes}, valid_session
        expect(assigns(:tribe)).to be_a_new(Tribe)
      end

      it "re-renders the 'new' template" do
        post :create, {:tribe => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested tribe" do
        tribe = Tribe.create! valid_attributes
        put :update, {:id => tribe.to_param, :tribe => new_attributes}, valid_session
        tribe.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested tribe as @tribe" do
        tribe = Tribe.create! valid_attributes
        put :update, {:id => tribe.to_param, :tribe => valid_attributes}, valid_session
        expect(assigns(:tribe)).to eq(tribe)
      end

      it "redirects to the tribe" do
        tribe = Tribe.create! valid_attributes
        put :update, {:id => tribe.to_param, :tribe => valid_attributes}, valid_session
        expect(response).to redirect_to(tribe)
      end
    end

    describe "with invalid params" do
      it "assigns the tribe as @tribe" do
        tribe = Tribe.create! valid_attributes
        put :update, {:id => tribe.to_param, :tribe => invalid_attributes}, valid_session
        expect(assigns(:tribe)).to eq(tribe)
      end

      it "re-renders the 'edit' template" do
        tribe = Tribe.create! valid_attributes
        put :update, {:id => tribe.to_param, :tribe => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tribe" do
      tribe = Tribe.create! valid_attributes
      expect {
        delete :destroy, {:id => tribe.to_param}, valid_session
      }.to change(Tribe, :count).by(-1)
    end

    it "redirects to the tribes list" do
      tribe = Tribe.create! valid_attributes
      delete :destroy, {:id => tribe.to_param}, valid_session
      expect(response).to redirect_to(tribes_url)
    end
  end

end
