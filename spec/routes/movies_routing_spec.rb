require 'rails_helper'

RSpec.describe MoviesController, type: :routing do


describe "Routes" do
  describe "moviesController" do
    it "routes get index" do
      expect(:get => "movies").to route_to(
        :controller => "movies",
        :action => "index"
      )
    end

    it "routes get new" do
      expect(:get => "movies/new").to route_to(
        :controller => "movies",
        :action => "new"
      )
    end

    it "routes get show" do
      expect(:get => "movies/1").to route_to(
        :controller => "movies",
        :action => "show",
        :id => "1"
      )
    end

    it "routes movie create" do
      expect(:post => "movies").to route_to(
        :controller => "movies",
        :action => "create"
      )
    end

    it "routes get edit" do
      expect(:get => "movies/1/edit").to route_to(
        :controller => "movies",
        :action => "edit",
        :id => "1"
      )
    end

    it "routes put update" do
      expect(:put => "movies/1").to route_to(
        :controller => "movies",
        :action => "update",
        :id => "1"
      )
    end

    it "routes delete destroy" do
      expect(:delete => "movies/1").to route_to(
        :controller => "movies",
        :action => "destroy",
        :id => "1"
      )
    end
  end
end
end
