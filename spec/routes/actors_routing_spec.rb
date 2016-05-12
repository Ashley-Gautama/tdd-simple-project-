require 'rails_helper'

RSpec.describe ActorsController, type: :routing do


describe "Routes" do
  describe "actorsController" do
    it "routes get index" do
      expect(:get => "actors").to route_to(
        :controller => "actors",
        :action => "index"
      )
    end

    it "routes get new" do
      expect(:get => "actors/new").to route_to(
        :controller => "actors",
        :action => "new"
      )
    end

    it "routes get show" do
      expect(:get => "actors/1").to route_to(
        :controller => "actors",
        :action => "show",
        :id => "1"
      )
    end

    it "routes actor create" do
      expect(:post => "actors").to route_to(
        :controller => "actors",
        :action => "create"
      )
    end

    it "routes get edit" do
      expect(:get => "actors/1/edit").to route_to(
        :controller => "actors",
        :action => "edit",
        :id => "1"
      )
    end

    it "routes put update" do
      expect(:put => "actors/1").to route_to(
        :controller => "actors",
        :action => "update",
        :id => "1"
      )
    end

    it "routes delete destroy" do
      expect(:delete => "actors/1").to route_to(
        :controller => "actors",
        :action => "destroy",
        :id => "1"
      )
    end
  end
end
end
