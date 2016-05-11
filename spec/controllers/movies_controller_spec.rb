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

  describe "GET #new" do

    it "expects a new movie belongs to class Movie" do
      get :new

       expect(assigns(:movie)).to be_a_new(Movie)
    end

    it "renders the #new view" do
      get :new
      response.should render_template :new
    end
  end

  describe "POST create" do
    context "with valid attributes" do

      it "creates a new contact" do
        parameters = {movie: {title: 'valid title', description:"loll", releasedate:2}}
        expect {post :create, parameters}.to change(Movie, :count).by(1)
      end

      it "assigns a newly created movie as @movie" do
        # parameters = Factory.attributes_for(:movies), not working, why?
        parameters = {movie: {title: 'valid title', description:"loll", releasedate:2}}
        post :create, parameters
        expect(assigns(:movie)).to be_a(Movie)
        expect(assigns(:movie)).to be_persisted
      end

      it "redirects to the new contact" do
        parameters = {movie: {title: 'valid title', description:"loll", releasedate:2}}
        post :create, parameters
        expect(response).to redirect_to(Movie.last)
      end

      it "assigns a newly created but unsaved movie as @movie with invalid parameters" do

        parameters = {movie:  {description:"loll", releasedate:2}}
        post :create, parameters
        expect(assigns(:movie)).to be_a_new(Movie)
      end
      it "re-renders the 'new' template with invalid parameters" do

        parameters = {movie:  {description:"loll", releasedate:2}}
        post :create, parameters
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    it "updates the requested movies" do
      movie = Movie.create!(title: "something", description: "hja", releasedate:2)

      put :update, {:id => movie.to_param, :movie => { "title" => "new title" }}
      assigns(:movie).should eq(movie)
      expect(response).to redirect_to(movie)
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested movie" do
      movie = Movie.create!(title: "something", description: "hja", releasedate:2)
      expect do
        delete :destroy, id: movie.id
      end.to change(Movie, :count).by(-1)
    end


    it "redirects to the movies list" do
      movie = Movie.create!(title: "something", description: "hja", releasedate:2)
      delete :destroy, {:id => movie.to_param}
      expect(response).to redirect_to(movies_url)
    end
  end
end
