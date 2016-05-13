require 'rails_helper'
require 'spec_helper'


RSpec.describe "movies/index", type: :view do



  before(:each) do
  assign(:movies, [
  Movie.create!(title: "whatever", description: "nice movie", releasedate:1212),
  Movie.create!(title: "gibberish", description: "pretty sweet", releasedate:123)
])

puts "#{Movie.all}"

    render
  end

  it "renders the title of the page" do
    assert_select "h1", text: "Movies", count: 1
  end

  it "renders a list of movies with a title" do
    assert_select "h3", text: "whatever", count: 1
    assert_select "h3", text: "gibberish", count: 1
  end

  it "renders a list of movies with a description" do
    assert_select "p", text: "nice movie", count: 1
    assert_select "p", text: "pretty sweet", count: 1
  end


end
