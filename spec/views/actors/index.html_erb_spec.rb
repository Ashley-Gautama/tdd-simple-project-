require 'spec_helper'


RSpec.describe "actors/index", type: :view do



  before(:each) do
  assign(:actors, [
  Actor.create!(name: "Jamie", bio: "fine swordsman", age:38),
  Actor.create!(name: "Sandor", bio: "big brute", age:41)
])

    render
  end

  it "renders the title of the page" do
    assert_select "h1", text: "Actors", count: 1
  end

  it "renders a list of actors with a bio" do
    assert_select "p", text: "fine swordsman", count: 1
    assert_select "p", text: "big brute", count: 1
  end

  it "renders a list of actors with a name" do
    assert_select "h3", text: "Jamie", count: 1
    assert_select "h3", text: "Sandor", count: 1
  end
end
