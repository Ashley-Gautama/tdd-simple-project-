require 'rails_helper'
require 'spec_helper'


RSpec.describe "movies/index", type: :view do
  let(:movie) { Movie.create(title: "movie@social.com", description: "12345678", releasedate:12) }
  let(:other_movie) { Movie.create(title: "movie@asocial.com", description: "12aS345678", releasedate:123) }

  before(:each) do

    render
  end

  it "renders the title of the page" do
    assert_select "h1", text: "Movies", count: 1
  end

  it "renders a list of movies with a description" do
    assert_select "p", description: movie.description, count: 1
    assert_select "p", description: other_movie.description, count: 1
  end

  it "renders a list of movies with a title" do
    assert_select ".post>.meta", title: movie.title, count: 1
    assert_select ".post>.meta", title: other_movie.title, count: 1
  end
end
