class ActorsController < ApplicationController
  # GET /actors
  # GET /actors.json
  def index
    @actors = Actor.all
  end

  # GET /actors/1
  # GET /actors/1.json
  def show
    @actor=Actor.find(params[:id])
  end


  # GET /actors/new
  def new
    @actor = Actor.new
  end



  # POST /actors
  # POST /actors.json
  def create
    @actor = Actor.new(actor_params)
    if @actor.save
      redirect_to @actor
    else
      render :new
    end
  end

  def actor_params
    params.require(:actor).permit(:name, :bio, :age)
  end
end
