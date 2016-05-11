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

end
