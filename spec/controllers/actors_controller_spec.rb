require 'rails_helper'

RSpec.describe ActorsController, type: :controller do

  describe "GET #index" do

    it "populates an array of actors" do
      actor = FactoryGirl.create(:actor)
      get :index
      assigns(:actors).should eq([actor])
    end

    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET #show" do

    it "assigns the requested actor to @actor" do
      actor1 = FactoryGirl.create(:actor)
      get :show, id: actor1.id
      assigns(:actor).should eq(actor1)
    end

    it "renders the #show view" do
      get :show, id: FactoryGirl.create(:actor)
      response.should render_template :show
    end
  end



  describe "GET #new" do

    it "expects a new actor belongs to class Actor" do
      get :new
      expect(assigns(:actor)).to be_a_new(Actor)
    end

    it "renders the #new view" do
      get :new
      response.should render_template :new
    end
  end

  describe "POST create" do
    context "with valid attributes" do

      it "creates a new actor" do
        parameters = {actor: {name: 'valid name', bio:"loll", age:2}}
        expect {post :create, parameters}.to change(Actor, :count).by(1)
      end

      it "assigns a newly created actor as @actor" do
        # parameters = Factory.attributes_for(:actors), not working, why?
        parameters = {actor: {name: 'valid name', bio:"loll", age:2}}
        post :create, parameters
        expect(assigns(:actor)).to be_a(Actor)
        expect(assigns(:actor)).to be_persisted
      end

      it "redirects to the new actor" do
        parameters = {actor: {name: 'valid name', bio:"loll", age:2}}
        post :create, parameters
        expect(response).to redirect_to(Actor.last)
      end

      it "assigns a newly created but unsaved actor as @actor with invalid parameters" do

        parameters = {actor:  {bio:"loll", age:2}}
        post :create, parameters
        expect(assigns(:actor)).to be_a_new(Actor)
      end

      it "re-renders the 'new' template with invalid parameters" do

        parameters = {actor:  {bio:"loll", age:2}}
        post :create, parameters
        expect(response).to render_template("new")
      end
    end
  end
end
