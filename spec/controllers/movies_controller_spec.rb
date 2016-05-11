require 'rails_helper'

RSpec.describe MoviesController, type: :controller do

  describe "GET #index" do
  it "populates an array of movies" do
    movie = FactoryGirl.create(:movie)
    get :index
    assigns(:movies).should eq([movie])


  end

  it "renders the :index view" do
    get :index
    response.should render_template :index
  end
end

describe "GET #show" do
  it "assigns the requested contact to @movie" do
    movie1 = FactoryGirl.create(:movie)
    get :show, id: movie1.id
    assigns(:movie).should eq(movie1)
  end

  it "renders the #show view" do
    get :show, id: FactoryGirl.create(:movie)
    response.should render_template :show
  end
end

end
