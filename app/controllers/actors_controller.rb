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

  def update
    @actor = Actor.find(params[:id])

      if @actor.update(actor_params)
          redirect_to @actor , notice: 'Actor was successfully updated.'
      else
        render :edit
      end
    end

  # DELETE /actors/1
  # DELETE /actors/1.json
  def destroy
    @actor=Actor.find(params[:id])
    @actor.destroy

       redirect_to actors_url, notice: 'Actor was successfully destroyed.'

    end
private

  def actor_params
    params.require(:actor).permit(:name, :bio, :age)
  end
end
