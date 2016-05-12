class MoviesController < ApplicationController
  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @movie=Movie.find(params[:id])

  end

  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render :new
    end
  end


  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    @movie = Movie.find(params[:id])

      if @movie.update(movie_params)
          redirect_to @movie , notice: 'Movie was successfully updated.'
      else
        render :edit
      end
    end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie=Movie.find(params[:id])
    @movie.destroy

       redirect_to movies_url, notice: 'Movie was successfully destroyed.'

    end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :description, :releasedate)
    end




  end
