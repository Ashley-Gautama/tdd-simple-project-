require 'rails_helper'
require 'spec_helper'

RSpec.describe "movies/show/", type: :view do


  before(:each) do
    assign(:actors, [
    philip=Actor.create!(name: "philip", bio: "brute", age:43 ),
    thomas=Actor.create!(name: "thomas", bio: "massive", age:54 )

    ])
    assign(:movie,
    Movie.create!(title: "Heavenly sword", description: "nice excellent", releasedate:1212, actors: [philip, thomas])

    )






  render
  end



  it "renders a list of movies with a description" do
    assert_select "p", text: "nice excellent", count: 1

  end

  it "renders a list of actors with a name" do
    assert_select "p", text: "philip", count: 1
    assert_select "p", text: "thomas", count: 1
  end
end
